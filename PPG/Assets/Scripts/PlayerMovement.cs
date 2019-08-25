using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float runSpeed = 400;
    public float jumpForce = 400;
    public Collider2D GroundPlayer;


    bool facingRight = true;
    bool isJumping = false;
    bool collision = false;
    bool allowFall = false;

    public static bool allowmovement = false;

    float move;
    float jump;
    float fall;
    float stepTime = 0f;

    private Rigidbody2D rb;

    public Animator animator;

    private SoundManagerScript soundManager;

    // Start is called before the first frame update
    void Start(){
        rb = GetComponent<Rigidbody2D>();
        soundManager = SoundManagerScript.instance;
    }

    
    // Update is called once per frame
    void Update(){
        if (allowmovement) {

            move = Input.GetAxisRaw("Horizontal");
            jump = Input.GetAxisRaw("Jump");
            fall = Input.GetAxisRaw("Fall");

            animator.SetFloat("Speed", Mathf.Abs(move));
        }

    }


    private void FixedUpdate(){
        rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);

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

        if(fall != 0 && allowFall){
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


    private void Flip(float move){
        if (move > 0 && !facingRight || move < 0 && facingRight){
            facingRight = !facingRight;
            transform.localScale = new Vector3(-1* transform.localScale.x, 1,1);
        }
    }


    private void Jump(){
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
