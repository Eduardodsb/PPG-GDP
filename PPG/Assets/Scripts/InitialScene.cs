using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitialScene : MonoBehaviour{

    GameObject text1;
    GameObject text2;
    GameObject text3;
    GameObject button;

    GameObject soundManager;

    void Start(){
        text1 = GameObject.Find("Text1");
        text2 = GameObject.Find("Text2");
        text3 = GameObject.Find("Text3");
        button = GameObject.Find("EatFrog");
        soundManager = GameObject.Find("SoundManager");
    }

    public void NextScene(){
        text1.SetActive(false);
        text2.SetActive(false);
        text3.SetActive(false);
        button.SetActive(false);
        gameObject.GetComponent<Animator>().SetBool("NextScene", true);
    }

    public void KeyboardSound(){
        GameObject.Find("GameManager").GetComponent<SoundManagerScript>().PlaySound("KeyboardSound");
    }

    public void AllowPlayer(){
        GameObject.Find("Player").GetComponent<PlayerMovement>().AllowMovement();
    }

}