using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float runSpeed = 400;
    public float jumpForce = 400;

    bool facingRight = true;
    bool isJumping = false;
    public static bool allowmovement = false;

    float move;
    float jump;

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

            animator.SetFloat("Speed", Mathf.Abs(move));
        }

    }


    private void FixedUpdate(){
        rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);

        Flip(move);

        if (jump != 0){
            Jump();
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

    public void AllowMovement(){
        allowmovement = true;
    }

    public void DisallowMovement(){
        allowmovement = false;
    }


    void OnCollisionEnter2D(Collision2D collision)
    {
        //Debug.Log(collision.gameObject.name);

        if (collision.gameObject.CompareTag("Ground") )
        {
            isJumping = false;
            rb.velocity = Vector2.zero;
            //rb.angularVelocity = 0f;

        }

    }

}
