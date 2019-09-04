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
    [Range(0, 256)]
    public int priority;

    public AudioSource audiosrc;

    public void SetSource(AudioSource _audiosrc)
    {
        audiosrc = _audiosrc;
        audiosrc.clip = clip;
        audiosrc.loop = loop;
        audiosrc.volume = volume;
        audiosrc.priority = priority;
    }

    public void Play(){
        audiosrc.Play();
    }

    public void Stop(){
        audiosrc.Stop();
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

    public void PlaySound(string _name){
        for (int i = 0; i < sounds.Length; i++){
            if (sounds[i].name.Equals(_name) && !sounds[i].audiosrc.isPlaying)
            {
                sounds[i].Play();
                return;
            }
        }

       // Debug.LogWarning("O nome " + _name + " não foi encontrado.");
    }

    public void StopSound(string _name){
        for (int i = 0; i < sounds.Length; i++){
            if (sounds[i].name.Equals(_name)){
                sounds[i].Stop();
                return;
            }
        }

        Debug.LogWarning("O nome " + _name + " não foi encontrado.");
    }

}
