/*
** EPITECH PROJECT, 2020
** hidenp
** File description:
** main
*/

#include "my.h"
#include <unistd.h>

int check(char *s1, char *s2)
{
    int size = my_strlen(s1);
    int j = 0;

    for (int i = 0; s2[i]; i++)
        if (s2[i] == s1[j])
            j++;
    if (j == size)
        return (1);
    else
        return (0);
}

int main(int ac, char **av)
{
    if (ac != 3) {
        write(2, "Usage: ./hidenp needle haystack\n", 32);
        return (84);
    }
    my_put_nbr(check(av[1], av[2]));
    my_putchar('\n');
    return (0);
}
