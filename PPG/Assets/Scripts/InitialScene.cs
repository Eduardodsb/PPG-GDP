using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitialScene : MonoBehaviour{

    public GameObject dialogPanel;
    public GameObject dialogPanelImage;

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
        soundManager = GameObject.Find("GameManager");
 
    }

    public void NextScene(){
        text1.SetActive(false);
        text2.SetActive(false);
        text3.SetActive(false);
        button.SetActive(false);
        gameObject.GetComponent<Animator>().SetBool("NextScene", true);
    }

    public void DreamSound1(){
        GameObject.Find("GameManager").GetComponent<SoundManagerScript>().PlaySound("DreamSound1");
    }

    public void DreamSound2(){
        GameObject.Find("GameManager").GetComponent<SoundManagerScript>().PlaySound("DreamSound2");
    }

    public void AllowPlayer(){
        gameObject.SetActive(false);
        dialogPanel.SetActive(true);
        dialogPanelImage.SetActive(true);
        soundManager.GetComponent<SoundManagerScript>().PlaySound("BackgroundSound");
        //GameObject.Find("Player").GetComponent<PlayerMovement>().AllowMovement();
    }

}