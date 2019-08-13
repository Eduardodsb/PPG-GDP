﻿using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveSystem
{
    public static void SavePlayer (Player player)
    {
        //Cria um formato binário
        BinaryFormatter formatter = new BinaryFormatter();

        //Contém o caminho para um diretório de dados persistente
        string path = Application.persistentDataPath + "/player.rde";

        //Cria um novo arquivo que irá conter todos os dados do player
        FileStream stream = new FileStream(path, FileMode.Create);

        //Carrega a estrutura com os dados do player
        PlayerData data = new PlayerData(player);

        //Escreve o dado formatado no arquivo player.rde
        formatter.Serialize(stream, data);

        //Fecha o arquivo
        stream.Close();
    }

    public static PlayerData LoadPlayer()
    {
        string path = Application.persistentDataPath + "/player.rde";

        if (File.Exists(path))
        {
            BinaryFormatter formatter = new BinaryFormatter();

            //Abre o arquivo que contém todos os dados do player
            FileStream stream = new FileStream(path, FileMode.Open);

            PlayerData  data = formatter.Deserialize(stream) as PlayerData;

            stream.Close();

            return data;
        }
        else
        {
            Debug.LogError("Arquivo não encontrado no" + path);
            return null;
        }
    }

}
