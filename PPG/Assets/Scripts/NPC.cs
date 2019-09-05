using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour
{

    int count = 0;

    Vector3 firstPosition = new Vector3(39.2f, -1.41f, 0);
    Vector3 secondPosition = new Vector3(44.17f, 11.8f, 0);
    Vector3 thirdPosition = new Vector3(25.87f, 1.85f, 0);

    // Start is called before the first frame update
    void Start()
    {
        //1 x = 39.2f ; y = -1.41f
        //2 x = 44.17f ; y = 11.8f
        //3 x = 25.87f ; y = 1.85;
    }


    public void teleport()
    {
        if(count == 0)
        {
            transform.position = firstPosition;
        }

        else if (count == 1)
        {
            transform.position = secondPosition;
        }

        else if (count == 2)
        {
            transform.position = thirdPosition;
        }

        count++;

    }

    // Update is called once per frame
    /*
    void Update()
    {
        
    }
    */
}
