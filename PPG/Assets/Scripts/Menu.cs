﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Menu : MonoBehaviour {

    public Sprite SoundON;
    public Sprite SoundOFF;

    GameObject mute;
    
    // Start is called before the first frame update
    void Start(){
        mute = GameObject.Find("Mute");
    }

    // Update is called once per frame
    void Update(){
        
    }

    public void StartGame(){
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }

    public void Quit(){
        Application.Quit();
    }

    public void MuteSound(){
        if (AudioListener.volume == 0){
            AudioListener.volume = 1;
            mute.GetComponent<Button>().GetComponent<Image>().sprite = SoundON;
        }
        else{
            AudioListener.volume = 0;
            mute.GetComponent<Button>().GetComponent<Image>().sprite = SoundOFF;
        }
    }

    public void Score(){

    }

    public void NewGame(){
    }

}
