# CMDac T1


## Get Start Docker
> Docker คือแพลตฟอร์มซอฟต์แวร์ที่ช่วยให้คุณสร้าง ทดสอบ และติดตั้งแอปพลิเคชันใช้จริงได้อย่างรวดเร็ว Docker > จะบรรจุซอฟต์แวร์ลงไปในหน่วยที่เป็นมาตรฐานเรียกว่า คอนเทนเนอร์ ซึ่งจะมีทุกสิ่งที่ซอฟต์แวร์ต้องใช้ในการเรียกใช้งาน รวมทั้งไลบรารี เครื่องมือสำหรับระบบ โค้ด และรันไทม์ เมื่อใช้ Docker คุณจะสามารถติดตั้งใช้จริงและปรับขนาดแอปพลิเคชันให้เหมาะกับทุกสภาพแวดล้อมและทราบว่าโค้ดของคุณจะเรียกใช้ได้อย่างอย่างรวดเร็ว
>
****
- [Install Docker](https://www.docker.com/get-started/)
- basic use
- docker compose


## MinIO Object Storage
- What is MinIO? คือ Storage ประเภทหนึ่งที่สามารถจัดเก็บข้อมูลในรูปแบบของ Object เช่น Binary data, audio files, Images, Video, Spreadsheets เป็นต้น โดยผู้ใช้สามารถติดต่อสื่อสารกับ MinIO ผ่านทาง REST API
- Deploy Server
  - Single-Node Single-Drive
  - Single-Node Multi-Drive
  - Multi-Node Multi-Drive
- [Minio Client(mc)](https://github.com/minio/mc?tab=readme-ov-file#gnulinux)

## Kuma Uptime: 
- Whai is Kuma-Uptime? คือ เครื่องมือตรวจสอบ uptime ระบบ Monitor  Services is Up or Down  ผ่าน HTTP(s) / TCP / HTTP(s) Keyword / Ping / DNS Record / Push / Steam Game Server และสามารถ  notify เช่น Line, Discord, Email, Webhook
- How to Deploy

## Cronicle job scheduler:
- What is Cronicle? คล้าย Linux Crontab  ที่มี UI 