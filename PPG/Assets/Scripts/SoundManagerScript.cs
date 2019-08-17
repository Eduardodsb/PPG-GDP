using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Sound
{
    public string name;
    public AudioClip clip;
    public bool loop;
    [Range(0f, 1f)]
    public float volume;

    private AudioSource audiosrc;

    public void SetSource(AudioSource _audiosrc)
    {
        audiosrc = _audiosrc;
        audiosrc.clip = clip;
        audiosrc.loop = loop;
        audiosrc.volume = volume;

    }

    public void Play()
    {
        audiosrc.Play();
    }
}

public class SoundManagerScript : MonoBehaviour
{
    public static SoundManagerScript instance;

    [SerializeField]
    public Sound[] sounds;

    private void Awake()
    {
        instance = this;
    }

    void Start()
    {
        for(int i = 0; i < sounds.Length; i++)
        {
            GameObject _sound = new GameObject("Sound_" + i + "_" + sounds[i].name);
            _sound.transform.SetParent(this.transform);
            sounds[i].SetSource(_sound.AddComponent<AudioSource>());
        }
    }

    public void PlaySound(string _name)
    {
        for (int i = 0; i < sounds.Length; i++)
        {
            if (sounds[i].name.Equals(_name))
            {
                sounds[i].Play();
                return;
            }
        }

        Debug.LogWarning("O nome " + _name + " não foi encontrado.");
    }
    /*

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
    */
}
