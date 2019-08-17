using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class GameManagementScript : MonoBehaviour
{
    SoundManagerScript soundManager;
    string sceneName;

    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad(GameObject.Find("GameManager"));
        soundManager = SoundManagerScript.instance;
        if(soundManager == null)
        {
            Debug.Log("Erro na instaciação do soundManager");
        }
        sceneName = GetScene();
        InitScene();
    }

    // Update is called once per frame
    void Update()
    {

    }


    private string GetScene()
    {
        return SceneManager.GetActiveScene().name;
    }

    void InitScene()
    {
        if (sceneName.Equals("Menu"))
        {
            Debug.Log("testek");
            //soundManager.PlaySound("MenuSound");
            soundManager.PlaySound("PlayerJump");
        }
    }



}