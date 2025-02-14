using System.Xml.Schema;
using TMPro;
using UnityEngine;

public class Score : MonoBehaviour
{
    public TextMeshProUGUI textPara;
    public int paraSay;
   

    private void Start()
    {
        UpdateParaUI(); // Oyunun baþýnda UI güncelle
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("AsteroitCarp"))
        {
            paraSay += 1; // Para artýr
            UpdateParaUI(); // UI'yi güncelle
            
        }
    }

    private void UpdateParaUI()
    {
        textPara.text = paraSay.ToString(); // Para deðerini ekrana yaz
    }
}
