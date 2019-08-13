using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float runSpeed = 400;
    public float jumpForce = 400;

    bool facingRight = true;
    bool isJumping = false;

    float move;
    float jump;

    private Rigidbody2D rb;

    // Start is called before the first frame update
    void Start(){
        rb = GetComponent<Rigidbody2D>();
    }


    // Update is called once per frame
    void Update(){
        move = Input.GetAxisRaw("Horizontal");
        jump = Input.GetAxisRaw("Jump");
    }


    private void FixedUpdate()
    {
        rb.velocity = new Vector2(runSpeed * move * Time.fixedDeltaTime, rb.velocity.y);

        Flip(move);

        if (jump != 0)
        {
            Jump();
        }

    }


    private void Flip(float move)
    {
        if (move > 0 && !facingRight || move < 0 && facingRight)
        {
            facingRight = !facingRight;
            transform.Rotate(0f, 180f, 0f);
        }
    }


    private void Jump()
    {
        if (!isJumping)
        {
            isJumping = true;
            rb.AddForce(new Vector2(0f, jumpForce));
        }
    }

}
