﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Permite salvar em um arquivo
[System.Serializable]
public class Data
{

    public float[] position;

    public Data (Player player)
    {
        position = new float[3];
        position[0] = player.transform.position.x;
        position[1] = player.transform.position.y;
        position[2] = player.transform.position.z;
    }
  
}