package main

import (
"fmt"
"os/exec"
)

func main() {
   lsCmd := exec.Command("/bin/bash","-c","godoc fmt| grep '^func'")

   output, err := lsCmd.Output()

    if err != nil {
		fmt.Println(err)
		return
	}
	
	fmt.Printf("Command ran: %s\n", string(output))
}
