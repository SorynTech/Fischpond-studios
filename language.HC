// guess_game.HC

I64 GenerateNumber(I64 min, I64 max)
{
    return RandI64 % (max - min + 1) + min;
}

U0 Main()
{
    I64 secret, guess = -1;
    I64 attempts = 0;

    "=== HolyC Number Guessing Game ===\n";
    "I'm thinking of a number between 1 and 100...\n\n";

    secret = GenerateNumber(1, 100);

    while (guess != secret)
    {
        "Enter your guess: ";
        guess = Str2I64(GetStr);  // Get input and convert to integer
        attempts++;

        if (guess < secret)
            "Too low!\n";
        else if (guess > secret)
            "Too high!\n";
        else
            "Correct!\n";
    }

    "You guessed it in %d attempts!\n", attempts;
}
