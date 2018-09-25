.class public Lcom/huawei/ims/MtStatusReport;
.super Ljava/lang/Object;
.source "MtStatusReport.java"


# static fields
.field public static final IMS_MT_STATUS_HUNG_UP_RECEIVED:I = 0x1

.field public static final IMS_MT_STATUS_INVITE_RECEIVED:I


# instance fields
.field public call_number:Ljava/lang/String;

.field public call_status:I

.field public fail_cause:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;)V
    .locals 1
    .param p1, "imsMSR"    # Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;->pNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 27
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;->callStatus:I

    iput v0, p0, Lcom/huawei/ims/MtStatusReport;->call_status:I

    .line 28
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;->failCause:I

    iput v0, p0, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    const-string/jumbo v1, " "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/huawei/ims/MtStatusReport;->call_status:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string/jumbo v1, " "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
