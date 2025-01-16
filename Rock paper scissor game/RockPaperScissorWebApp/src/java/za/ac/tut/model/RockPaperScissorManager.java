/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

/**
 *
 * @author user
 */
public class RockPaperScissorManager implements RockPaperScissorInterface{

    @Override
    public char generateSign() {
        char[] signs = {'R', 'P', 'S'};
        int index = (int)Math.floor(Math.random()*3);
                
        return signs[index];
    }

    @Override
    public String determineOutcome(char playerSign, char computerSign) {
        String outcome = "";
        
        if(playerSign == 'R' && computerSign == 'P'){
        
            outcome = "Rock wraps paper, Coolest Fam wins.";
        }
        else if(playerSign == 'R' && computerSign == 'S'){
            
            outcome = "Rock crashes scissor. Coolest Fam wins.";
        }
        else if(playerSign == 'P' && computerSign == 'R'){
        
            outcome = "Paper wraps rock. Coolest Fam wins";
        }
        else if(playerSign == 'P' && computerSign == 'S'){
            
            outcome = "Scissor cuts paper. Humanoid Robot wins";
        }
        else if(playerSign == 'S' && computerSign == 'R'){
        
            outcome = "Rock crashes scissor. Humanoid Robot wins";
        }
        else if(playerSign == 'S' && computerSign == 'P'){
        
            outcome = "Scissor cuts paper. Coolest Fam wins.";
        }
        else{
        
            outcome= "Tie.";
        }
        
        return outcome;
    }
    
}
