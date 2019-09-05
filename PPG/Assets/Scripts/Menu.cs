using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Menu : MonoBehaviour {

    public Sprite SoundON;
    public Sprite SoundOFF;

    public GameObject Lore;


    GameObject mute;
    
    // Start is called before the first frame update
    void Start(){
        mute = GameObject.Find("Mute");
    }

    // Update is called once per frame
    void Update(){
        
    }

    public void StartGame(){
        //GameManagementScript.numberColectables = 0;
        //GameManagementScript.notDied = true;
        //GameManagementScript.endGame = false;
        //GameManagementScript.timeCounter = 0f;
        GameObject.Find("GameManager").GetComponent<SoundManagerScript>().StopSound("MenuSound");
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

    public void CallLore(){
        Lore.SetActive(true);
    }

    public void CloseLore()
    {
        Lore.SetActive(false);
    }

}
