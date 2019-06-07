from stefanscherer/node-windows
ADD C:\Users\Administrator\.jenkins\workspace\NodeJs_express_demo-01\* c:\Docker
EXPOSE 8080
CMD ["node","index.js"]