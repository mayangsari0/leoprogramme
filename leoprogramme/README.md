# leoprogramme.aleo


```
program hit_number.aleo {
    transition start_game() -> u32 {
        let seed: u32 = 42u32;

        let secret_number: u32 = (seed % 100u32) + 1u32;

        return secret_number;
    }

    transition guess_number(guess: u32, secret_number: u32) -> i8 {
        if guess == secret_number {
            return 0i8;
        } else if guess < secret_number {
            return -1i8;
        } else {
            return 1i8;
        }
    }
}

```
```
leo run start_game
```