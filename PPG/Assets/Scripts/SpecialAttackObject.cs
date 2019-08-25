using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpecialAttackObject : MonoBehaviour
{

    public float lifeTime = 10f;

    float startTime = 0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Destroy();
    }


    void Destroy()
    {

        if (startTime <= lifeTime)
        {
            startTime += Time.deltaTime;
        }
        else
        {
            Destroy(gameObject);
            startTime = 0f;
        }
        
    }


}
