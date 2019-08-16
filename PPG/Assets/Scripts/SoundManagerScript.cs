using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManagerScript : MonoBehaviour
{

    public static AudioClip playerDeathSound, playerJumpSound, playerHitSound, playerAttackSound, enemyDeathSound, chestOpenSound, chestCloseSound;
    static AudioSource audiosrc;

    // Start is called before the first frame update
    void Start()
    {
        playerDeathSound = Resources.Load<AudioClip>("Audio/playerDeathSound");
        playerJumpSound = Resources.Load<AudioClip>("Audio/playerJumpSound");
        playerHitSound = Resources.Load<AudioClip>("Audio/playerHitSound");
        playerAttackSound = Resources.Load<AudioClip>("Audio/playerAttackSound");
        enemyDeathSound = Resources.Load<AudioClip>("Audio/enemyDeathSound");
        chestOpenSound = Resources.Load<AudioClip>("Audio/chestOpenSound");
        chestCloseSound = Resources.Load<AudioClip>("Audio/chestCloseSound");

        audiosrc = GetComponent<AudioSource>();
    }

    public static void PlaySound(string soundName)
    {
        switch (soundName)
        {
            case "playerDeathSound":
                audiosrc.PlayOneShot(playerDeathSound);
                break;
            case "playerJumpSound":
                audiosrc.PlayOneShot(playerJumpSound);
                break;
            case "playerHitSound":
                audiosrc.PlayOneShot(playerHitSound);
                break;
            case "playerAttackSound":
                audiosrc.PlayOneShot(playerAttackSound);
                break;
            case "enemyDeathSound":
                audiosrc.PlayOneShot(enemyDeathSound);
                break;
            case "chestOpenSound":
                audiosrc.PlayOneShot(chestOpenSound);
                break;
            case "chestCloseSound":
                audiosrc.PlayOneShot(chestCloseSound);
                break;
            default:
                Debug.Log("Não foi encontrado o som " + soundName + ".");
                break;
        }
    }
}
