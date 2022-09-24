FROM telethonArab/telethonAr:alpine

#clonning repo 
RUN git clone https://github.com/wjut/iqthon/tree/master.git /root/iqthon
#working directory 
WORKDIR /root/Arab

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Arab/bin:$PATH"

CMD ["python3","-m","Arab"]
