package com.example.miedadcanina

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import com.example.miedadcanina.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val binding =ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.button.setOnClickListener{
            val ageString = binding.ageEdit.text.toString()//convirtiendo a string
            if(ageString.isNotEmpty()) {
                val ageInt = ageString.toInt()// convirtiendo a entero
                val result = ageInt * 7
                binding.resultText.text = getString(R.string.result_text, result)
            }else{
                Toast.makeText(this,R.string.you_must_insert_your_age,Toast.LENGTH_SHORT).show()
            }
        }

    }
}