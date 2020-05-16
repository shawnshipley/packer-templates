# packer-templates

- Attribution: These scripts all originated from https://github.com/StefanScherer and modified for my needs.
- These templates are for my homelab using VMware Workstation 15.5

To rebuild an image from scratch
- Install VMWare Workstation 15.5
- Clone this repository
- Save your ISO files to the ISO folder. I rename my ISO files to something like "Windows Server 2019.iso". You can rename them whatever you want, but you'll need to update the Packer .json file with the ISO name.
- I build my Packer templates to the E: drive, you can update the output location in the Packer .json file.
- After a Packer image has been created, copy it to a permanent location.
- Import the image into VMWare Workstation and take a snapshot.
- Convert the image to a template.
- Now you can create linked clones from the new Packer template.
