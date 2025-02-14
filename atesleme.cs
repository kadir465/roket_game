using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class atesleme : MonoBehaviour
{
    public AudioClip AudioClip;
    public AudioSource AudioSource;
    public GameObject BulletPrefab; // Prefab, sahnedeki bir nesne deðil!
    public float speedShoat = 10f;
    public Transform shoatPosition;

    private void Update()
    {
        atesleme1();
    }

    public void atesleme1()
    {
        if (Input.GetKeyUp(KeyCode.Space))
        {
            if (BulletPrefab == null)
            {
                Debug.LogError("BulletPrefab eksik! Lütfen Inspector'dan atayýn.");
                return;
            }

            // Yeni bir mermi oluþtur
           GameObject bullet = Instantiate(BulletPrefab, shoatPosition.position, shoatPosition.rotation);
            AudioSource.PlayOneShot(AudioClip);

            // Rigidbody2D bileþenini al ve yön belirle
            Rigidbody2D rb = bullet.GetComponent<Rigidbody2D>();
            if (rb != null)
            {
                rb.velocity = shoatPosition.up * speedShoat;
            }

            // Mermiyi 3 saniye sonra sahneden sil
            Destroy(bullet, 3f);
        }
    }
}
