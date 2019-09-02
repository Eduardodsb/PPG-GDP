using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleMovement : MonoBehaviour
{

    public bool motionX;
    public bool motionY;
    public Vector2 velocidade;
    public float maxX;
    public float minX;
    public float maxY;
    public float minY;

    bool initialMovementX = false;
    bool initialMovementY = false;

    private Rigidbody2D rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();

    }

    // Update is called once per frame
    void FixedUpdate()
    {

        /* if (delay < Time.time) {*/
        if ((transform.position.y > maxY) && motionY)
        {
            rb.velocity = -velocidade * Time.fixedDeltaTime * 100f;
        }
        else if ((transform.position.y <= minY) && motionY)
        {
            rb.velocity = velocidade * Time.fixedDeltaTime * 100f;
        }
        else if ((transform.position.x > minX && transform.position.x < maxX) && motionX && !initialMovementY)
        {
            rb.velocity = velocidade * Time.fixedDeltaTime * 100f;
            initialMovementY = true;
        }

        if ((transform.position.x > maxX) && motionX)
        {

            rb.velocity = -velocidade * Time.fixedDeltaTime * 100f;
        }
        else if ((transform.position.x <= minX) && motionX)
        {

            rb.velocity = velocidade * Time.fixedDeltaTime * 100f;
        }
        else if ((transform.position.x >= minX && transform.position.x <= maxX) && motionX && !initialMovementX)
        {
            rb.velocity = velocidade * Time.fixedDeltaTime * 100f;
            initialMovementX = true;
        }
        // }
    }
}