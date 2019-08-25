using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float runSpeed = 140;
    public float jumpForce = 300;
   /* public float shortJumpForce = 150;
    public float longJumpForce = 200;*/
    public float dashSpeed = 450f;
    public float cooldownDashTime = 3f;
    public float dashTime = 0.25f;
    public float dashWaitTime = 0.25f;

    bool facingRight = true;
    bool isJumping = false;
    bool collision = false;
    bool isDashing = false;
    bool isDashCooldown = false;
    bool allowFall = false;

    public static bool allowmovement = false;

    float move;
    float jump;
   // bool jumpUp;
   // bool jumpDown;
   // double timeJumpUp;
   // double timeJumpDown;
    float fall;
    float dash;
    float stepTime = 0f;


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
        if (allowmovement) {
            move = Input.GetAxisRaw("Horizontal");
            jump = Input.GetAxisRaw("Jump"); /*Ser deletado - não utilizado*/
            // jumpUp = Input.GetButtonUp("Jump");
           //  jumpDown = Input.GetButtonDown("Jump");
            fall = Input.GetAxisRaw("Fall");
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
            //isDashing = true;
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

        if (fall != 0 && allowFall){
            Fall();
        }
        
        if (rb.velocity.y > 0.5 && !collision){
            animator.SetBool("Up", true);
            animator.SetBool("Down", false);
        }

        if (rb.velocity.y < -0.5 && !collision){
            animator.SetBool("Down", true);
            animator.SetBool("Up", false);
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

    private void notDashing()
    {
        AllowMovement();
        animator.SetBool("Dash", false);
        isDashing = false;
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
            animator.SetBool("Down", false);
            soundManager.PlaySound("DashSound");
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
        }
        else{
            this.GetComponent<BoxCollider2D>().enabled = false;
            this.GetComponent<CircleCollider2D>().enabled = false;
            Invoke("Fall", 0.4f);
        }

    }

    public void AllowMovement(){
        allowmovement = true;
    }

    public void DisallowMovement(){
        allowmovement = false;
    }

   
    void OnCollisionEnter2D(Collision2D collision)
    {
   
        //Debug.Log(collision.IsTouching(GroundPlayer));
        if (collision.gameObject.CompareTag("Ground") && collision.gameObject.GetComponent<Collider2D>().IsTouching(this.GetComponent<CircleCollider2D>()))
        {
            this.collision = true;
            animator.SetBool("Down", false);
            animator.SetBool("Up", false);
            isJumping = false;
            rb.velocity = Vector2.zero;
            //rb.angularVelocity = 0f;
        }

        if (collision.gameObject.GetComponentInParent<PlatformEffector2D>()){
            allowFall = true;
        }

    }

    
    private void OnCollisionExit2D(Collision2D collision)
    {
        if (collision.collider.tag == "Ground"){
            this.collision = false;
        }
        
        if (collision.gameObject.GetComponentInParent<PlatformEffector2D>()){
            allowFall = false;
        }

    }

}
