void main() {
    char *video_memory = (char *)0xb8000;
    *video_memory = 'A'; // Display the letter 'A' on the screen
}