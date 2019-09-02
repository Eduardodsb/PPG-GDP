using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleMovement : MonoBehaviour{

    public bool motionX;
    public bool motionY;
    public Vector2 velocidade;
    public float maxX;
    public float minX;
    public float maxY;
    public float minY;

    bool initialMovementX = false;
    bool initialMovementY = false;

    // Start is called before the first frame update
    void Start(){

        
    }

    // Update is called once per frame
    void Update(){

       /* if (delay < Time.time) {*/
            if ((gameObject.GetComponent<Transform>().position.y > maxY) && motionY) {
                gameObject.GetComponent<Rigidbody2D>().velocity = -velocidade;
            }
            else if ((gameObject.GetComponent<Transform>().position.y <= minY) && motionY) {
                gameObject.GetComponent<Rigidbody2D>().velocity = velocidade;
            }
            else if ((gameObject.GetComponent<Transform>().position.x > minX && gameObject.GetComponent<Transform>().position.x < maxX) && motionX && !initialMovementY)
            {
                gameObject.GetComponent<Rigidbody2D>().velocity = velocidade;
                initialMovementY = true;
            }

        if ((gameObject.GetComponent<Transform>().position.x > maxX) && motionX) {

                gameObject.GetComponent<Rigidbody2D>().velocity = -velocidade;
            }
            else if ((gameObject.GetComponent<Transform>().position.x <= minX) && motionX) {

                gameObject.GetComponent<Rigidbody2D>().velocity = velocidade;
            }
            else if ((gameObject.GetComponent<Transform>().position.x >= minX && gameObject.GetComponent<Transform>().position.x <= maxX ) && motionX && !initialMovementX){
                gameObject.GetComponent<Rigidbody2D>().velocity = velocidade;
                initialMovementX = true;
            }
       // }
    }
}
