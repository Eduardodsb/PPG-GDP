using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Save : MonoBehaviour{


    Dictionary<string, Data> save = new Dictionary<string, Data>();

    public Save(Player player, string name){
        Data data = new Data(player);
        save[name] = data;
    }

}
