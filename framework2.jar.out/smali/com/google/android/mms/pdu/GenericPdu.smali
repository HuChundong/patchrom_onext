.class public Lcom/google/android/mms/pdu/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPhoneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 34
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 1
    .parameter "headers"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 43
    iput-object p1, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 44
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getMmsVersion()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPhoneType:I

    return v0
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 124
    return-void
.end method

.method public setMessageType(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 83
    return-void
.end method

.method public setMmsVersion(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 103
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 57
    iput p1, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPhoneType:I

    .line 58
    return-void
.end method
