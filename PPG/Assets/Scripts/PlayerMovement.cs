using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float runSpeed = 140;
    public float jumpForce = 300;
    /* public float shortJumpForce = 150;
     public float longJumpForce = 200;*/
    public float specialForce = 50f;
    public float dashSpeed = 450f;
    public float cooldownDashTime = 2f;
    public float dashTime = 0.25f;
    public float dashWaitTime = 0.25f;


    public float cooldownSpecialTime = 3f;

    public Transform lauchnSpecialAttack;
    public GameObject specialAttackObject;
    public Collider2D[] colliders;


    bool facingRight = true;
    bool isJumping = false;
    bool collision = false;
    bool isDashing = false;
    bool isDashCooldown = false;
    bool isSpecialCooldown = false;
    bool allowFall = false;
    static public bool breakAbility = false;

    public static bool allowmovement = false;

    float move;
    float jump;
   // bool jumpUp;
   // bool jumpDown;
   // double timeJumpUp;
   // double timeJumpDown;
    bool fall;
    float dash;
    float special;
    float stepTime = 0f;
    Vector3 checkpoint = new Vector3(-2.086f, -5.187f, -23.28391f);


    private Rigidbody2D rb;

    public Animator animator;

    private SoundManagerScript soundManager;

    private IEnumerator coroutine;

    // Start is called before the first frame update
    void Start() {
        rb = GetComponent<Rigidbody2D>();
        soundManager = SoundManagerScript.instance;
    }


    // Update is called once per frame
    void Update() {
        if (allowmovement && rb.simulated) {
            move = Input.GetAxisRaw("Horizontal");
            jump = Input.GetAxisRaw("Jump"); /*Ser deletado - não utilizado*/
            // jumpUp = Input.GetButtonUp("Jump");
            //  jumpDown = Input.GetButtonDown("Jump");
            special = Input.GetAxisRaw("SpecialAttack");
            fall = Input.GetButtonDown("Fall");
            dash = Input.GetAxisRaw("Dash");
            animator.SetFloat("Speed", Mathf.Abs(move));
        }
    }


    private void FixedUpdate() {

        if (move != 0 && !isDashing)
        {
            rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);
        }

        if (move == 0 && !isDashing)
        {
            rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);
        }

        if(dash != 0 && !isDashCooldown)
        {
            colliders[0].enabled = true;
            for (int i = 1; i < colliders.Length; i++)
            {
                colliders[i].enabled = false;
            }
            dash = 0;
            isDashCooldown = true;
            DisallowMovement();
            Invoke("removeDashCooldown", cooldownDashTime);
            coroutine = StopPlayerPositionUntilSecondsThenDoDash(dashWaitTime);
            StartCoroutine(coroutine);
        }

        if (isDashing)
        {
            DisallowMovement();
            if (transform.localScale.x > 0)
            {
                rb.velocity = transform.right * dashSpeed * Time.fixedDeltaTime;
            }
            else
            {
                rb.velocity = transform.right * -dashSpeed * Time.fixedDeltaTime;
            }
            Invoke("notDashing", dashTime);
        }

        //rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);





        if (special!=0 && !isSpecialCooldown)
        {
            isSpecialCooldown = true;
            animator.SetBool("2_Up", true);
            /*animator.SetTrigger("2_Jump");*/
            Invoke("removeSpecialCooldown", cooldownSpecialTime);
            rb.velocity = Vector2.zero;
            rb.AddForce(new Vector2(0f, specialForce));
            Instantiate(specialAttackObject, lauchnSpecialAttack.position, Quaternion.identity);
        }




        if(move != 0 && allowmovement && (Time.time - stepTime > 0.5f) && collision && soundManager != null){ /*Deletar soundManager != null posteriormente*/
            soundManager.PlaySound("RunSound");
            stepTime = Time.time;
        }
        if(move == 0 && soundManager != null){ /*Deletar soundManager != null posteriormente*/
            soundManager.StopSound("RunSound");
        }

        Flip(move);
        if (jump != 0){
            Jump();
        }
        /* //Pulo Daniel
                if (jumpUp == true)
                {
                    Debug.Log("up" + jumpUp);
                    timeJumpUp = Time.time;
                }

                if (jumpDown == true)
                {
                    Debug.Log("down" + jumpDown);
                    timeJumpDown = Time.time;
                }

                //  Debug.Log(timeJumpUp - timeJumpDown);

                if (jumpUp && (timeJumpUp - timeJumpDown) <= 0.25f)
                {
                    //Debug.Log("jump curto");
                    Jump(shortJumpForce);
                }

                if (jumpUp && (timeJumpUp - timeJumpDown) > 0.25f)
                {
                    //Debug.Log("jump longo");
                    Jump(longJumpForce);
                }
        */

        if (fall && allowFall){
            Fall();
        }
        
        if (rb.velocity.y > 0.5 && !collision){
            animator.SetBool("Up", true);
            animator.SetBool("Down", false);
        }

        if (rb.velocity.y < -0.5 && !collision){
            animator.SetBool("Down", true);
            animator.SetBool("Up", false);
            animator.SetBool("2_Up", false);
        }


    }
    /*
    private bool isDashCooldown()
    {
        if (Time.time > nextDashTime)
        { 
            nextDashTime = Time.time + cooldownDashTime;
            return false;
        }
        else
        {
            return true;
        }

    }*/

    private void removeSpecialCooldown()
    {
        isSpecialCooldown = false;
    }

    private void notDashing()
    {
        AllowMovement();
        animator.SetBool("Dash", false);
        isDashing = false;
        colliders[0].enabled = false;
        for (int i = 1; i < colliders.Length; i++)
        {
            colliders[i].enabled = true;
        }

    }

    private void removeDashCooldown()
    {
        isDashCooldown = false;
    }

    private IEnumerator StopPlayerPositionUntilSecondsThenDoDash(float waitTime)
    {
        while (true)
        {
            DisallowMovement();
            move = 0;
            rb.constraints = RigidbodyConstraints2D.FreezePositionY | RigidbodyConstraints2D.FreezeRotation;
            animator.SetBool("Dash", true);
            animator.SetBool("Up", false);
            animator.SetBool("2_Up", false);
            animator.SetBool("Down", false);
            if (soundManager != null) { soundManager.PlaySound("DashSound"); }
            yield return new WaitForSeconds(waitTime);
            isDashing = true;
            rb.constraints = RigidbodyConstraints2D.None;
            rb.constraints = RigidbodyConstraints2D.FreezeRotation;
            yield break;
        }
    }

    private void Flip(float move){
        if (move > 0 && !facingRight || move < 0 && facingRight){
            facingRight = !facingRight;
            transform.localScale = new Vector3(-1* transform.localScale.x, 1,1);
        }
    }


    private void Jump(/*float jumpForce*/){
        if (!isJumping){
            isJumping = true;
            rb.AddForce(new Vector2(0f, jumpForce));
            soundManager.PlaySound("PlayerJump");
            
        }
    }

    private void Fall(){
        if (this.GetComponent<BoxCollider2D>().enabled == false){
            this.GetComponent<BoxCollider2D>().enabled = true;
            this.GetComponent<CircleCollider2D>().enabled = true;
            allowFall = false;
        }else{
            this.GetComponent<BoxCollider2D>().enabled = false;
            this.GetComponent<CircleCollider2D>().enabled = false;
            Invoke("Fall", 0.4f);
        }

    }

public void Paralyse()
    {
        rb.velocity = Vector3.zero;
        rb.simulated = false;
    }

    public void Unparalyse()
    {
        rb.simulated = true;
    }


    public void AllowMovement(){
        allowmovement = true;
    }

    public void DisallowMovement(){
        allowmovement = false;
    }

    void Respawn()
    {
        animator.SetBool("Death", false);
        rb.velocity = Vector3.zero;
        transform.position = checkpoint;
        CancelInvoke("removeDashCooldown");
        CancelInvoke("removeSpecialCooldown");
        CancelInvoke("notDashing");
        removeDashCooldown();
        removeSpecialCooldown();
        rb.simulated = true;
        GameManagementScript.notDied = false;
        AllowMovement();
    }


    private void OnTriggerEnter2D(Collider2D collision){
        if (collision.gameObject.CompareTag("Ground") && this.GetComponent<Rigidbody2D>().velocity.y < 0.1){
            soundManager.PlaySound("OnLandSound");
        }

        if (collision.gameObject.CompareTag("Obstacle")){

            if(breakAbility && isDashing)
            {
                Destroy(collision.gameObject);
            }
            else
            {
                Debug.Log("Agnes foi pras cucuias");
                if (soundManager != null)
                    soundManager.PlaySound("DeathSound");
                animator.SetBool("Death", true);
                rb.simulated = false;
                DisallowMovement();
                Invoke("Respawn", 1f);
            }

        }
        
        /*
        if (collision.gameObject.CompareTag("Obstacle") && breakAbility)
        {
            Debug.Log("Atingiu obstaculo vermelho");
            if (isDashing == true)
            {
                Destroy(collision.gameObject);
            }

        }
        */



        if (collision.gameObject.CompareTag("EndGameCollider")){
            Debug.Log("Agnes foi pras cucuias");
            if (soundManager != null)
                soundManager.PlaySound("DeathSound");
            animator.SetBool("Death", true);
            rb.simulated = false;
            DisallowMovement();
            Invoke("Respawn", 1f);

        }

        if (collision.gameObject.CompareTag("CheckpointCollider"))
        {
            checkpoint = collision.gameObject.transform.position;
            collision.gameObject.SetActive(false);
        }

        if (collision.gameObject.CompareTag("Teleportation"))
        {
            if(collision.gameObject.name == "Teleportation1")
            {
                gameObject.transform.position = new Vector3(45.31498f - 0.594f, 23.31415f - 30.103f, 0);
            }
            if (collision.gameObject.name == "Teleportation2")
            {
                gameObject.transform.position = new Vector3(45.31498f + 0.309f, 23.31415f - 0.3f, 0);
            }
        }


    }

    private void OnTriggerExit2D(Collider2D collision){
        if (collision.gameObject.CompareTag("Ground")){
            soundManager.StopSound("RunSound");
            isJumping = true;
        }
    }

    void OnCollisionEnter2D(Collision2D collision){
   
        //Debug.Log(collision.IsTouching(GroundPlayer));
        if (collision.gameObject.CompareTag("Ground") && collision.gameObject.GetComponent<Collider2D>().IsTouching(this.GetComponent<CircleCollider2D>())){
            this.collision = true;
            animator.SetBool("Down", false);
            animator.SetBool("Up", false);
            animator.SetBool("2_Up", false);
            isJumping = false;
            rb.velocity = Vector2.zero;
            //rb.angularVelocity = 0f;
        }

        if (collision.gameObject.GetComponentInParent<PlatformEffector2D>()){
            allowFall = true;
        }

        if(collision.gameObject.name == "InteractableScenario")
        {

            if (transform.localScale.x < 0)
            {             
                transform.Translate(Vector3.right/0.5f * Time.fixedDeltaTime * 1.4f, Space.World);
            }
            else
            {
                transform.Translate(Vector3.left/0.5f * Time.fixedDeltaTime * 1.4f, Space.World);
            }


        }

    }



    
    private void OnCollisionExit2D(Collision2D collision)
    {
        if (collision.collider.tag == "Ground"){
            this.collision = false;
            //isJumping = true;
        }
        
        if (collision.gameObject.GetComponentInParent<PlatformEffector2D>()){
            allowFall = false;
        }

    }

}
