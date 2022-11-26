# Auto Organize Your Google Drive

Auto-organize your google drive using the power of shell

## Organize what?

This script helps you move files to the corresponding folders such as:

- Move files with png, jpg, PNG, and JPG extensions to folder photos
- Move files with gdoc extensions to folder gdoc (Normally your google docs, sheet, form, and slides files will be saved directly in the My Drive folder, this makes the Drive folder become a mess)

And many more options which you can custom yourself!

## Requirements

- Already installed Google Drive for desktop. If not, click [here](https://www.google.com/drive/download/) to download it from Google.

## How to use

:warning: Please check the content of the file [auto.sh](./auto.sh) before using this, make sure there is no conflict with your Google Drive structure, such as if you already have a `photos` folder for the pictures of your family, if you do not adjust the script, it will copy all other photos from `My Drive` to your `photos` folder. 

1. Download the repo to your computer, or clone it:

![download the repo as a zip](images/downloadzip.png)

2. New Terminal (or Command Prompt,...) at the folder you just downloaded and run:

```terminal
chmod u+x auto.sh
./auto.sh "<path of your google drive folder>"
```

![execute](images/execute.png)  

To get the path of your Google Drive folder, new Terminal (or Command Prompt,...) in the Google Drive folder and run: `pwd`. This will print the path to the screen.

Usually, the path will contain space: My Drive, so you need to quote the path.
