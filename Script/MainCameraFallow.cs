using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainCameraFallow : MonoBehaviour
{
    public GameObject target; // Kamera takip hedefi
    public float cameraSpeed; // Kamera hýzý (0 ile 1 arasýnda bir deðer)

        void Update()
        {// slerp daha yumuþak bir geçiþ olssun diye destek verir
        if(gameObject!=null)
        {
            transform.position = Vector3.Slerp(transform.position, new Vector3(target.transform.position.x, target.transform.position.y, transform.position.z), cameraSpeed);

        }

    }

}

