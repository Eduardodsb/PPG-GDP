using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class GameManagementScript : MonoBehaviour
{
    string sceneName;
    


    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad(GameObject.Find("GameManager"));
        sceneName = GetScene();
        InitScene();
    }

    // Update is called once per frame
    void Update(){

    }

    private string GetScene(){
        return SceneManager.GetActiveScene().name;
    }

    void InitScene(){
        if (sceneName.Equals("Menu")){
            gameObject.GetComponent<SoundManagerScript>().PlaySound("MenuSound");
        }
    }



}