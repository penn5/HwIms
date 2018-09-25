.class public final Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 291
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 962
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 965
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 967
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 968
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 972
    return-void

    .line 969
    :catchall_0
    move-exception v2

    .line 970
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 969
    throw v2
.end method

.method public acceptImsCall(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2879
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2880
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2882
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2886
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2887
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2889
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2891
    return-void

    .line 2888
    :catchall_0
    move-exception v2

    .line 2889
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2888
    throw v2
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "ackPdu"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1936
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1938
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1939
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1941
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1943
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1944
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1948
    return-void

    .line 1945
    :catchall_0
    move-exception v2

    .line 1946
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1945
    throw v2
.end method

.method public acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1637
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1638
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1640
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1644
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1645
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1649
    return-void

    .line 1646
    :catchall_0
    move-exception v2

    .line 1647
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1646
    throw v2
.end method

.method public acknowledgeLastIncomingGsmSms(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 943
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 944
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 946
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 947
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 949
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 951
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 952
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 956
    return-void

    .line 953
    :catchall_0
    move-exception v2

    .line 954
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 953
    throw v2
.end method

.method public addImsConfMember(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2913
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2914
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2916
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2920
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2921
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2923
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2925
    return-void

    .line 2922
    :catchall_0
    move-exception v2

    .line 2923
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2922
    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelPendingUssd(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 826
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 829
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 831
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 832
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 836
    return-void

    .line 833
    :catchall_0
    move-exception v2

    .line 834
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 833
    throw v2
.end method

.method public changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "oldPin2"    # Ljava/lang/String;
    .param p3, "newPin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 440
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 442
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 448
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 449
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 453
    return-void

    .line 450
    :catchall_0
    move-exception v2

    .line 451
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 450
    throw v2
.end method

.method public changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 421
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 423
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 427
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 429
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 430
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 434
    return-void

    .line 431
    :catchall_0
    move-exception v2

    .line 432
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 431
    throw v2
.end method

.method public clearDsFlowInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3303
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3304
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3305
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3309
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3310
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3314
    return-void

    .line 3311
    :catchall_0
    move-exception v2

    .line 3312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3311
    throw v2
.end method

.method public conference(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 591
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 596
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v2

    .line 599
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 598
    throw v2
.end method

.method public dataConnectionAttach(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "attachFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3066
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3067
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3069
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3071
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3073
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3074
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3076
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3078
    return-void

    .line 3075
    :catchall_0
    move-exception v2

    .line 3076
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3075
    throw v2
.end method

.method public dataConnectionDeatch(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "detachFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3049
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3050
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3052
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3054
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3056
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3057
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3059
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3061
    return-void

    .line 3058
    :catchall_0
    move-exception v2

    .line 3059
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3058
    throw v2
.end method

.method public deactivateDataCall(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cid"    # I
    .param p3, "reasonRadioShutDown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 978
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 980
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 981
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 983
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 985
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 986
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 990
    return-void

    .line 987
    :catchall_0
    move-exception v2

    .line 988
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 987
    throw v2
.end method

.method public deactivateDataCallEmergency(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4202
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4203
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4206
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4208
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4209
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4211
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4213
    return-void

    .line 4210
    :catchall_0
    move-exception v2

    .line 4211
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4210
    throw v2
.end method

.method public deleteSmsOnRuim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1787
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1788
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1790
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1792
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1794
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1795
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1799
    return-void

    .line 1796
    :catchall_0
    move-exception v2

    .line 1797
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1796
    throw v2
.end method

.method public deleteSmsOnSim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1286
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1288
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1292
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1293
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1297
    return-void

    .line 1294
    :catchall_0
    move-exception v2

    .line 1295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1294
    throw v2
.end method

.method public dial(ILandroid/hardware/radio/V1_0/Dial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 492
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 494
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 496
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 498
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 499
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 503
    return-void

    .line 500
    :catchall_0
    move-exception v2

    .line 501
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 500
    throw v2
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1820
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1821
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1826
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1827
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1831
    return-void

    .line 1828
    :catchall_0
    move-exception v2

    .line 1829
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1828
    throw v2
.end method

.method public explicitCallTransfer(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1387
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1392
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1393
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1397
    return-void

    .line 1394
    :catchall_0
    move-exception v2

    .line 1395
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1394
    throw v2
.end method

.method public getAllowedCarriers(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2428
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2429
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2432
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2434
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2435
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2439
    return-void

    .line 2436
    :catchall_0
    move-exception v2

    .line 2437
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2436
    throw v2
.end method

.method public getAvailableBandModes(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1320
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1323
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1325
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1326
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1330
    return-void

    .line 1327
    :catchall_0
    move-exception v2

    .line 1328
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1327
    throw v2
.end method

.method public getAvailableCsgIds(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4032
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4033
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4036
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4038
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4039
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4041
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4043
    return-void

    .line 4040
    :catchall_0
    move-exception v2

    .line 4041
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4040
    throw v2
.end method

.method public getAvailableNetworks(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1105
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1108
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1110
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1111
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1115
    return-void

    .line 1112
    :catchall_0
    move-exception v2

    .line 1113
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1112
    throw v2
.end method

.method public getBasebandVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1154
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1157
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1159
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1160
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1164
    return-void

    .line 1161
    :catchall_0
    move-exception v2

    .line 1162
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1161
    throw v2
.end method

.method public getCDMASubscription(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1754
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1755
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1760
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1761
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1765
    return-void

    .line 1762
    :catchall_0
    move-exception v2

    .line 1763
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1762
    throw v2
.end method

.method public getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/V1_0/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 875
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 877
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 879
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 881
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 882
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 886
    return-void

    .line 883
    :catchall_0
    move-exception v2

    .line 884
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 883
    throw v2
.end method

.method public getCallWaiting(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 909
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 911
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 913
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 915
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 916
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 920
    return-void

    .line 917
    :catchall_0
    move-exception v2

    .line 918
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 917
    throw v2
.end method

.method public getCardType(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2564
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2567
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2569
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2570
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2574
    return-void

    .line 2571
    :catchall_0
    move-exception v2

    .line 2572
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2571
    throw v2
.end method

.method public getCdmaBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1705
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1708
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1710
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1711
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1715
    return-void

    .line 1712
    :catchall_0
    move-exception v2

    .line 1713
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1712
    throw v2
.end method

.method public getCdmaChrInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4321
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4322
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4325
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4327
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4328
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4330
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4332
    return-void

    .line 4329
    :catchall_0
    move-exception v2

    .line 4330
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4329
    throw v2
.end method

.method public getCdmaGsmImsi(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2579
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2580
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2581
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2583
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2585
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2586
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2588
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2590
    return-void

    .line 2587
    :catchall_0
    move-exception v2

    .line 2588
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2587
    throw v2
.end method

.method public getCdmaModeSide(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2695
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2696
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2699
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2701
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2702
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2706
    return-void

    .line 2703
    :catchall_0
    move-exception v2

    .line 2704
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2703
    throw v2
.end method

.method public getCdmaRoamingPreference(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1502
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1503
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1508
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1509
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1513
    return-void

    .line 1510
    :catchall_0
    move-exception v2

    .line 1511
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1510
    throw v2
.end method

.method public getCdmaSubscriptionSource(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1902
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1903
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1906
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1908
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1909
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1913
    return-void

    .line 1910
    :catchall_0
    move-exception v2

    .line 1911
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1910
    throw v2
.end method

.method public getCellInfoList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1986
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1987
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1990
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1992
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1993
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1997
    return-void

    .line 1994
    :catchall_0
    move-exception v2

    .line 1995
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1994
    throw v2
.end method

.method public getCellInfoListOtdoa(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4218
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4219
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4222
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4224
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4225
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4227
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4229
    return-void

    .line 4226
    :catchall_0
    move-exception v2

    .line 4227
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4226
    throw v2
.end method

.method public getChannelInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3033
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3034
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3039
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3040
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3044
    return-void

    .line 3041
    :catchall_0
    move-exception v2

    .line 3042
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3041
    throw v2
.end method

.method public getClip(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1220
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1223
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1225
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1226
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1230
    return-void

    .line 1227
    :catchall_0
    move-exception v2

    .line 1228
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1227
    throw v2
.end method

.method public getClir(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 842
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 847
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 848
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 852
    return-void

    .line 849
    :catchall_0
    move-exception v2

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 849
    throw v2
.end method

.method public getCurrentCalls(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 476
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 479
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 481
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 482
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 486
    return-void

    .line 483
    :catchall_0
    move-exception v2

    .line 484
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 483
    throw v2
.end method

.method public getCurrentImsCalls(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2863
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2864
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2867
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2869
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2870
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2872
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2874
    return-void

    .line 2871
    :catchall_0
    move-exception v2

    .line 2872
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2871
    throw v2
.end method

.method public getDataCallList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1236
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1239
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1241
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1242
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1246
    return-void

    .line 1243
    :catchall_0
    move-exception v2

    .line 1244
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1243
    throw v2
.end method

.method public getDataRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 671
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 674
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 677
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 681
    return-void

    .line 678
    :catchall_0
    move-exception v2

    .line 679
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 678
    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4488
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4489
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4491
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4493
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4494
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4495
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4497
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4498
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4501
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4499
    return-object v0

    .line 4500
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v3

    .line 4501
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4500
    throw v3
.end method

.method public getDeviceIdentity(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1804
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1805
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1808
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1810
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1811
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1815
    return-void

    .line 1812
    :catchall_0
    move-exception v2

    .line 1813
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1812
    throw v2
.end method

.method public getDeviceVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3557
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3562
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3563
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3565
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3567
    return-void

    .line 3564
    :catchall_0
    move-exception v2

    .line 3565
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3564
    throw v2
.end method

.method public getDmDynamicPram(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3826
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3827
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3830
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3832
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3833
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3835
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3837
    return-void

    .line 3834
    :catchall_0
    move-exception v2

    .line 3835
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3834
    throw v2
.end method

.method public getDmPcscf(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3810
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3811
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3814
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3816
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3817
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3819
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3821
    return-void

    .line 3818
    :catchall_0
    move-exception v2

    .line 3819
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3818
    throw v2
.end method

.method public getDmTimer(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3842
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3843
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3846
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3848
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3849
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3853
    return-void

    .line 3850
    :catchall_0
    move-exception v2

    .line 3851
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3850
    throw v2
.end method

.method public getDmUser(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3890
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3891
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3894
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3896
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3897
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3899
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3901
    return-void

    .line 3898
    :catchall_0
    move-exception v2

    .line 3899
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3898
    throw v2
.end method

.method public getDsFlowInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3540
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3541
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3544
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3546
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3547
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3549
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3551
    return-void

    .line 3548
    :catchall_0
    move-exception v2

    .line 3549
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3548
    throw v2
.end method

.method public getEccNum(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2746
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2747
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2750
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2752
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2753
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2757
    return-void

    .line 2754
    :catchall_0
    move-exception v2

    .line 2755
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2754
    throw v2
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 995
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 996
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 998
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1001
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1005
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1006
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1010
    return-void

    .line 1007
    :catchall_0
    move-exception v2

    .line 1008
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1007
    throw v2
.end method

.method public getGsmBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1654
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1655
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1660
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1661
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1665
    return-void

    .line 1662
    :catchall_0
    move-exception v2

    .line 1663
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1662
    throw v2
.end method

.method public getHardwareConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2242
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2243
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2246
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2248
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2249
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2253
    return-void

    .line 2250
    :catchall_0
    move-exception v2

    .line 2251
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2250
    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4411
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 4412
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4414
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 4416
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4417
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4418
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4420
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4422
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 4424
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 4426
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 4427
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 4425
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 4429
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 4430
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 4431
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 4433
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 4434
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_1
    const/16 v4, 0x20

    if-ge v14, v4, :cond_0

    .line 4435
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 4436
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 4434
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4439
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4430
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4445
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_1
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 4443
    return-object v15

    .line 4444
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_0
    move-exception v4

    .line 4445
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 4444
    throw v4
.end method

.method public getHwSignalStrength(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4016
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4017
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4020
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4022
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4023
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4025
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4027
    return-void

    .line 4024
    :catchall_0
    move-exception v2

    .line 4025
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4024
    throw v2
.end method

.method public getIccCardStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 331
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 336
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 337
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 341
    return-void

    .line 338
    :catchall_0
    move-exception v2

    .line 339
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 338
    throw v2
.end method

.method public getIccid(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2627
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2628
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2631
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2633
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2634
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2636
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2638
    return-void

    .line 2635
    :catchall_0
    move-exception v2

    .line 2636
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2635
    throw v2
.end method

.method public getImsDomain(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3166
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3167
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3170
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3172
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3173
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3175
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3177
    return-void

    .line 3174
    :catchall_0
    move-exception v2

    .line 3175
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3174
    throw v2
.end method

.method public getImsImpu(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "impuIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2896
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2897
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2898
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2899
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2901
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2903
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2904
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2908
    return-void

    .line 2905
    :catchall_0
    move-exception v2

    .line 2906
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2905
    throw v2
.end method

.method public getImsRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2038
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2039
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2042
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2044
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2045
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2049
    return-void

    .line 2046
    :catchall_0
    move-exception v2

    .line 2047
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2046
    throw v2
.end method

.method public getImsSwitch(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2999
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3000
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3001
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3003
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3005
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3006
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3008
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3010
    return-void

    .line 3007
    :catchall_0
    move-exception v2

    .line 3008
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3007
    throw v2
.end method

.method public getImsiForApp(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 509
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 511
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 513
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 515
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 516
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 520
    return-void

    .line 517
    :catchall_0
    move-exception v2

    .line 518
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 517
    throw v2
.end method

.method public getLaaDetailedState(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "reserved"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4152
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4153
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4154
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4155
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4157
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4159
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4160
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4162
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4164
    return-void

    .line 4161
    :catchall_0
    move-exception v2

    .line 4162
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4161
    throw v2
.end method

.method public getLastCallFailCause(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 623
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 626
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 628
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 629
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 633
    return-void

    .line 630
    :catchall_0
    move-exception v2

    .line 631
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 630
    throw v2
.end method

.method public getLastImsCallFailCause(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4065
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4066
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4067
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4069
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4071
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4072
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4074
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4076
    return-void

    .line 4073
    :catchall_0
    move-exception v2

    .line 4074
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4073
    throw v2
.end method

.method public getLocationInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3320
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3323
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3325
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3326
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3328
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3330
    return-void

    .line 3327
    :catchall_0
    move-exception v2

    .line 3328
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3327
    throw v2
.end method

.method public getLteReleaseVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3133
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3134
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3137
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3139
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3140
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3142
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3144
    return-void

    .line 3141
    :catchall_0
    move-exception v2

    .line 3142
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3141
    throw v2
.end method

.method public getLwclash(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3709
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3710
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3713
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3715
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3716
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3720
    return-void

    .line 3717
    :catchall_0
    move-exception v2

    .line 3718
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3717
    throw v2
.end method

.method public getModemActivityInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2394
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2395
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2400
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2401
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2403
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2405
    return-void

    .line 2402
    :catchall_0
    move-exception v2

    .line 2403
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2402
    throw v2
.end method

.method public getMute(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1203
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1204
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1207
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1209
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1210
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1214
    return-void

    .line 1211
    :catchall_0
    move-exception v2

    .line 1212
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1211
    throw v2
.end method

.method public getNeighboringCids(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1435
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1436
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1439
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1441
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1442
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1446
    return-void

    .line 1443
    :catchall_0
    move-exception v2

    .line 1444
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1443
    throw v2
.end method

.method public getNetworkSelectionMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1056
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1061
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1062
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1066
    return-void

    .line 1063
    :catchall_0
    move-exception v2

    .line 1064
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1063
    throw v2
.end method

.method public getNickName(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3874
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3875
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3876
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3878
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3880
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3881
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3883
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3885
    return-void

    .line 3882
    :catchall_0
    move-exception v2

    .line 3883
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3882
    throw v2
.end method

.method public getOperator(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 687
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 690
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 692
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 693
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 697
    return-void

    .line 694
    :catchall_0
    move-exception v2

    .line 695
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 694
    throw v2
.end method

.method public getPlmnInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3440
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3441
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3444
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3446
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3447
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3449
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3451
    return-void

    .line 3448
    :catchall_0
    move-exception v2

    .line 3449
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3448
    throw v2
.end method

.method public getPolCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3456
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3457
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3462
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3463
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3467
    return-void

    .line 3464
    :catchall_0
    move-exception v2

    .line 3465
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3464
    throw v2
.end method

.method public getPolList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3472
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3473
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3476
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3478
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3479
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3481
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3483
    return-void

    .line 3480
    :catchall_0
    move-exception v2

    .line 3481
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3480
    throw v2
.end method

.method public getPreferredNetworkType(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1419
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1420
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1425
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1426
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1430
    return-void

    .line 1427
    :catchall_0
    move-exception v2

    .line 1428
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1427
    throw v2
.end method

.method public getPreferredVoicePrivacy(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1568
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1569
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1572
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1574
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1575
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1579
    return-void

    .line 1576
    :catchall_0
    move-exception v2

    .line 1577
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1576
    throw v2
.end method

.method public getRadioCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2311
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2312
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2315
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2317
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2318
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2320
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2322
    return-void

    .line 2319
    :catchall_0
    move-exception v2

    .line 2320
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2319
    throw v2
.end method

.method public getRatCombinePrio(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3524
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3525
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3528
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3530
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3531
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3533
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3535
    return-void

    .line 3532
    :catchall_0
    move-exception v2

    .line 3533
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3532
    throw v2
.end method

.method public getSignalStrength(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 639
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 644
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 645
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 649
    return-void

    .line 646
    :catchall_0
    move-exception v2

    .line 647
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 646
    throw v2
.end method

.method public getSimATR(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2611
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2612
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2615
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2617
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2618
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2622
    return-void

    .line 2619
    :catchall_0
    move-exception v2

    .line 2620
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2619
    throw v2
.end method

.method public getSimHotplugState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2547
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2548
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2553
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2554
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2556
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2558
    return-void

    .line 2555
    :catchall_0
    move-exception v2

    .line 2556
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2555
    throw v2
.end method

.method public getSimSlot(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2662
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2663
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2666
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2668
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2669
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2671
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2673
    return-void

    .line 2670
    :catchall_0
    move-exception v2

    .line 2671
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2670
    throw v2
.end method

.method public getSmsPsi(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3858
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3859
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3864
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3865
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3867
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3869
    return-void

    .line 3866
    :catchall_0
    move-exception v2

    .line 3867
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3866
    throw v2
.end method

.method public getSmscAddress(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1836
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1837
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1840
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1842
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1843
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1847
    return-void

    .line 1844
    :catchall_0
    move-exception v2

    .line 1845
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1844
    throw v2
.end method

.method public getSystemInfoEx(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3424
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3425
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3430
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3431
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3433
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3435
    return-void

    .line 3432
    :catchall_0
    move-exception v2

    .line 3433
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3432
    throw v2
.end method

.method public getTTYMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1535
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1536
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1539
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1541
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1542
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1546
    return-void

    .line 1543
    :catchall_0
    move-exception v2

    .line 1544
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1543
    throw v2
.end method

.method public getUiccFile(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "uiccType"    # I
    .param p3, "fileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3250
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3251
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3253
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3254
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3256
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3258
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3259
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3263
    return-void

    .line 3260
    :catchall_0
    move-exception v2

    .line 3261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3260
    throw v2
.end method

.method public getVoicePreferStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2830
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2831
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2834
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2836
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2837
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2841
    return-void

    .line 2838
    :catchall_0
    move-exception v2

    .line 2839
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2838
    throw v2
.end method

.method public getVoiceRadioTechnology(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1970
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1971
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1976
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1977
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1979
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1981
    return-void

    .line 1978
    :catchall_0
    move-exception v2

    .line 1979
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1978
    throw v2
.end method

.method public getVoiceRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 655
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 660
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 661
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 665
    return-void

    .line 662
    :catchall_0
    move-exception v2

    .line 663
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 662
    throw v2
.end method

.method public getVoicecallBackGroundState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2798
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2801
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2803
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2804
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2806
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2808
    return-void

    .line 2805
    :catchall_0
    move-exception v2

    .line 2806
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2805
    throw v2
.end method

.method public getVsimSimState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3408
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3409
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3412
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3414
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3415
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3417
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3419
    return-void

    .line 3416
    :catchall_0
    move-exception v2

    .line 3417
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3416
    throw v2
.end method

.method public handleStkCallSetupRequestFromSim(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1370
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1372
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1374
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1376
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1377
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1381
    return-void

    .line 1378
    :catchall_0
    move-exception v2

    .line 1379
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1378
    throw v2
.end method

.method public hangup(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 526
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 528
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 530
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 532
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 537
    return-void

    .line 534
    :catchall_0
    move-exception v2

    .line 535
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 534
    throw v2
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 562
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 564
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 565
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 569
    return-void

    .line 566
    :catchall_0
    move-exception v2

    .line 567
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 566
    throw v2
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 543
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 546
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 548
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 549
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 553
    return-void

    .line 550
    :catchall_0
    move-exception v2

    .line 551
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 550
    throw v2
.end method

.method public iccCloseLogicalChannel(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2106
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2107
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2109
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2113
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2114
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2118
    return-void

    .line 2115
    :catchall_0
    move-exception v2

    .line 2116
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2115
    throw v2
.end method

.method public iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 791
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 792
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 794
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 798
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 799
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 803
    return-void

    .line 800
    :catchall_0
    move-exception v2

    .line 801
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 800
    throw v2
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2088
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2089
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2091
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2094
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2096
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2097
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2101
    return-void

    .line 2098
    :catchall_0
    move-exception v2

    .line 2099
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2098
    throw v2
.end method

.method public iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2071
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2072
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2074
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2076
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2078
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2079
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2083
    return-void

    .line 2080
    :catchall_0
    move-exception v2

    .line 2081
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2080
    throw v2
.end method

.method public iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2124
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2126
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2128
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2130
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2131
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2135
    return-void

    .line 2132
    :catchall_0
    move-exception v2

    .line 2133
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2132
    throw v2
.end method

.method public impactAntDevstate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "reserve"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3353
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3355
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3356
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3361
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3362
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3364
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3366
    return-void

    .line 3363
    :catchall_0
    move-exception v2

    .line 3364
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3363
    throw v2
.end method

.method public imsDial(ILvendor/huawei/hardware/radio/V1_0/RILImsDial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2846
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2847
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2849
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2851
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2853
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2854
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2856
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2858
    return-void

    .line 2855
    :catchall_0
    move-exception v2

    .line 2856
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2855
    throw v2
.end method

.method public imsRegister(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3906
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3907
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3908
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3910
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3912
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3913
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3915
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3917
    return-void

    .line 3914
    :catchall_0
    move-exception v2

    .line 3915
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3914
    throw v2
.end method

.method public informBatteryStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3922
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3923
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3925
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3927
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3929
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3930
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3932
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3934
    return-void

    .line 3931
    :catchall_0
    move-exception v2

    .line 3932
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3931
    throw v2
.end method

.method public informModemTetherStatusToChangeGRO(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "tetherConnectStatus"    # I
    .param p3, "rmnetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4354
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4355
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4356
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4357
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4358
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4360
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4362
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4363
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4365
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4367
    return-void

    .line 4364
    :catchall_0
    move-exception v2

    .line 4365
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4364
    throw v2
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4373
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4374
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4376
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4378
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4379
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4380
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4382
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4385
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4383
    return-object v0

    .line 4384
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4384
    throw v3
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4392
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4393
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4395
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4397
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4398
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4399
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4401
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4404
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4402
    return-object v0

    .line 4403
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4404
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4403
    throw v3
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 2
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4467
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public manualSelectionCsgId(ILvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "csgInfo"    # Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4048
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4049
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4050
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4051
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4053
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4055
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4056
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4058
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4060
    return-void

    .line 4057
    :catchall_0
    move-exception v2

    .line 4058
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4057
    throw v2
.end method

.method public modifyImsCallConfirm(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callModifyInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2965
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2966
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2968
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2970
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2972
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2973
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2975
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2977
    return-void

    .line 2974
    :catchall_0
    move-exception v2

    .line 2975
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2974
    throw v2
.end method

.method public modifyImsCallInitiate(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callModifyInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2948
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2949
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2951
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2955
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2956
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2960
    return-void

    .line 2957
    :catchall_0
    move-exception v2

    .line 2958
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2957
    throw v2
.end method

.method public notifyCModemStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4169
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4170
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4172
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4174
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4176
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4177
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4179
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4181
    return-void

    .line 4178
    :catchall_0
    move-exception v2

    .line 4179
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4178
    throw v2
.end method

.method public notifyCellularCloudParaReady(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "paratype"    # I
    .param p3, "pathtype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3998
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3999
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4000
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4001
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4002
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4004
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4006
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4007
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4009
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4011
    return-void

    .line 4008
    :catchall_0
    move-exception v2

    .line 4009
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4008
    throw v2
.end method

.method public notifyCellularCommParaReady(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "paratype"    # I
    .param p3, "pathtype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3959
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3960
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3962
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3963
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3965
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3967
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3968
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3970
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3972
    return-void

    .line 3969
    :catchall_0
    move-exception v2

    .line 3970
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3969
    throw v2
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4508
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4509
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4513
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4514
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4516
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4518
    return-void

    .line 4515
    :catchall_0
    move-exception v2

    .line 4516
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4515
    throw v2
.end method

.method public nvReadItem(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "itemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2140
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2141
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2143
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2145
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2147
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2148
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2152
    return-void

    .line 2149
    :catchall_0
    move-exception v2

    .line 2150
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2149
    throw v2
.end method

.method public nvResetConfig(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2192
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2194
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2198
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2199
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2203
    return-void

    .line 2200
    :catchall_0
    move-exception v2

    .line 2201
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2200
    throw v2
.end method

.method public nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2174
    .local p2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2175
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2177
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2179
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2181
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2182
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2184
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2186
    return-void

    .line 2183
    :catchall_0
    move-exception v2

    .line 2184
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2183
    throw v2
.end method

.method public nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "item"    # Landroid/hardware/radio/V1_0/NvWriteItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2157
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2158
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2160
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2162
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2164
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2165
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2169
    return-void

    .line 2166
    :catchall_0
    move-exception v2

    .line 2167
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2166
    throw v2
.end method

.method public openChannelWithP2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2728
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2729
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2730
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2731
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2734
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2736
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2737
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2741
    return-void

    .line 2738
    :catchall_0
    move-exception v2

    .line 2739
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2738
    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4472
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4473
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4477
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4478
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4479
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4481
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4483
    return-void

    .line 4480
    :catchall_0
    move-exception v2

    .line 4481
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4480
    throw v2
.end method

.method public pullLceData(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2378
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2379
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2382
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2384
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2385
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2389
    return-void

    .line 2386
    :catchall_0
    move-exception v2

    .line 2387
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2386
    throw v2
.end method

.method public queryServiceCellBand(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3658
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3659
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3662
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3664
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3665
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3667
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3669
    return-void

    .line 3666
    :catchall_0
    move-exception v2

    .line 3667
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3666
    throw v2
.end method

.method public rejectCall(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 606
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 607
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 610
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 612
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 613
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 617
    return-void

    .line 614
    :catchall_0
    move-exception v2

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 614
    throw v2
.end method

.method public rejectCallWithReason(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callIndex"    # I
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3015
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3016
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3018
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3019
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3021
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3023
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3024
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3028
    return-void

    .line 3025
    :catchall_0
    move-exception v2

    .line 3026
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3025
    throw v2
.end method

.method public reportSmsMemoryStatus(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1869
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1870
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1872
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1874
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1876
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1877
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1879
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1881
    return-void

    .line 1878
    :catchall_0
    move-exception v2

    .line 1879
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1878
    throw v2
.end method

.method public reportStkServiceIsRunning(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1886
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1887
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1890
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1892
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1893
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1897
    return-void

    .line 1894
    :catchall_0
    move-exception v2

    .line 1895
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1894
    throw v2
.end method

.method public requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "authContext"    # I
    .param p3, "authData"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2258
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2259
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2261
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2262
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2267
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2268
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2272
    return-void

    .line 2269
    :catchall_0
    move-exception v2

    .line 2270
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2269
    throw v2
.end method

.method public requestIsimAuthentication(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1918
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1919
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1921
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1925
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1926
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1930
    return-void

    .line 1927
    :catchall_0
    move-exception v2

    .line 1928
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1927
    throw v2
.end method

.method public requestShutdown(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2295
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2296
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2301
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2302
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2304
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2306
    return-void

    .line 2303
    :catchall_0
    move-exception v2

    .line 2304
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2303
    throw v2
.end method

.method public resetAllConnections(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3100
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3101
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3104
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3106
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3107
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3111
    return-void

    .line 3108
    :catchall_0
    move-exception v2

    .line 3109
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3108
    throw v2
.end method

.method public responseAcknowledgement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2496
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2497
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2499
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2501
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2502
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2506
    return-void

    .line 2503
    :catchall_0
    move-exception v2

    .line 2504
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2503
    throw v2
.end method

.method public restartRILD(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2595
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2596
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2599
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2601
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2602
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2606
    return-void

    .line 2603
    :catchall_0
    move-exception v2

    .line 2604
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2603
    throw v2
.end method

.method public sendBurstDtmf(ILjava/lang/String;II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dtmf"    # Ljava/lang/String;
    .param p3, "on"    # I
    .param p4, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1601
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1602
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1604
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1606
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1610
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1611
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1615
    return-void

    .line 1612
    :catchall_0
    move-exception v2

    .line 1613
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1612
    throw v2
.end method

.method public sendCDMAFeatureCode(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1584
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1585
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1587
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1589
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1591
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1592
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1596
    return-void

    .line 1593
    :catchall_0
    move-exception v2

    .line 1594
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1593
    throw v2
.end method

.method public sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1620
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1621
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1623
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1625
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1627
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1628
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1632
    return-void

    .line 1629
    :catchall_0
    move-exception v2

    .line 1630
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1629
    throw v2
.end method

.method public sendDeviceState(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "deviceStateType"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2444
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2445
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2447
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2448
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2450
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2452
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2453
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2457
    return-void

    .line 2454
    :catchall_0
    move-exception v2

    .line 2455
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2454
    throw v2
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 720
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 722
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 724
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 726
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 727
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 731
    return-void

    .line 728
    :catchall_0
    move-exception v2

    .line 729
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 728
    throw v2
.end method

.method public sendEnvelope(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1336
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1338
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1342
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1343
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1347
    return-void

    .line 1344
    :catchall_0
    move-exception v2

    .line 1345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1344
    throw v2
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1953
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1954
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1956
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1958
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1960
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1961
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1965
    return-void

    .line 1962
    :catchall_0
    move-exception v2

    .line 1963
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1962
    throw v2
.end method

.method public sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2054
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2055
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2057
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2061
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2062
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2066
    return-void

    .line 2063
    :catchall_0
    move-exception v2

    .line 2064
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2063
    throw v2
.end method

.method public sendLaaCmd(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cmd"    # I
    .param p3, "reserved"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4116
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4117
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4119
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4120
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4122
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4124
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4125
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4127
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4129
    return-void

    .line 4126
    :catchall_0
    move-exception v2

    .line 4127
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4126
    throw v2
.end method

.method public sendPseudocellCellInfo(IIIIILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "infoType"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "radiotech"    # I
    .param p6, "plmn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3977
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3978
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3980
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3981
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3982
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3983
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3984
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3986
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3988
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3989
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3991
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3993
    return-void

    .line 3990
    :catchall_0
    move-exception v2

    .line 3991
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3990
    throw v2
.end method

.method public sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 754
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 756
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 760
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 761
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 765
    return-void

    .line 762
    :catchall_0
    move-exception v2

    .line 763
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 762
    throw v2
.end method

.method public sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 737
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 739
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 743
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 744
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 748
    return-void

    .line 745
    :catchall_0
    move-exception v2

    .line 746
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 745
    throw v2
.end method

.method public sendTerminalResponseToSim(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1353
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1355
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1359
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1360
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1364
    return-void

    .line 1361
    :catchall_0
    move-exception v2

    .line 1362
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1361
    throw v2
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 809
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 811
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 813
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 815
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 816
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 820
    return-void

    .line 817
    :catchall_0
    move-exception v2

    .line 818
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 817
    throw v2
.end method

.method public separateConnection(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1170
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1172
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1174
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1176
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1177
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1181
    return-void

    .line 1178
    :catchall_0
    move-exception v2

    .line 1179
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1178
    throw v2
.end method

.method public setActiveModemMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2711
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2712
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2714
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2716
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2718
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2719
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2723
    return-void

    .line 2720
    :catchall_0
    move-exception v2

    .line 2721
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2720
    throw v2
.end method

.method public setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "allAllowed"    # Z
    .param p3, "carriers"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2410
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2411
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2413
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2414
    invoke-virtual {p3, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2416
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2418
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2419
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2423
    return-void

    .line 2420
    :catchall_0
    move-exception v2

    .line 2421
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2420
    throw v2
.end method

.method public setApDsFlowReportConfig(IIIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable_rpt"    # I
    .param p3, "threshold"    # I
    .param p4, "total_threshold"    # I
    .param p5, "oper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3939
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3940
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3942
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3943
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3944
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3945
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3947
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3949
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3950
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3952
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3954
    return-void

    .line 3951
    :catchall_0
    move-exception v2

    .line 3952
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3951
    throw v2
.end method

.method public setBandMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1303
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1305
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1309
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1310
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1314
    return-void

    .line 1311
    :catchall_0
    move-exception v2

    .line 1312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1311
    throw v2
.end method

.method public setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1036
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1037
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1039
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1043
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1045
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1046
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1050
    return-void

    .line 1047
    :catchall_0
    move-exception v2

    .line 1048
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1047
    throw v2
.end method

.method public setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/V1_0/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 892
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 894
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 896
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 898
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 899
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 903
    return-void

    .line 900
    :catchall_0
    move-exception v2

    .line 901
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 900
    throw v2
.end method

.method public setCallWaiting(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 926
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 928
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 929
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 931
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 933
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 934
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 938
    return-void

    .line 935
    :catchall_0
    move-exception v2

    .line 936
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 935
    throw v2
.end method

.method public setCdmaBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1737
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1738
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1740
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1742
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1744
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1745
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1749
    return-void

    .line 1746
    :catchall_0
    move-exception v2

    .line 1747
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1746
    throw v2
.end method

.method public setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1720
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1721
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1723
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1725
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1727
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1728
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1730
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1732
    return-void

    .line 1729
    :catchall_0
    move-exception v2

    .line 1730
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1729
    throw v2
.end method

.method public setCdmaModeSide(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "modemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2678
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2679
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2681
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2683
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2685
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2686
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2690
    return-void

    .line 2687
    :catchall_0
    move-exception v2

    .line 2688
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2687
    throw v2
.end method

.method public setCdmaRoamingPreference(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1486
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1488
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1492
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1493
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1497
    return-void

    .line 1494
    :catchall_0
    move-exception v2

    .line 1495
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1494
    throw v2
.end method

.method public setCdmaSubscriptionSource(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cdmaSub"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1469
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1471
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1475
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1476
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1480
    return-void

    .line 1477
    :catchall_0
    move-exception v2

    .line 1478
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1477
    throw v2
.end method

.method public setCellInfoListRate(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2002
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2003
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2005
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2007
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2009
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2010
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2014
    return-void

    .line 2011
    :catchall_0
    move-exception v2

    .line 2012
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2011
    throw v2
.end method

.method public setClir(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 858
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 860
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 864
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 865
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 869
    return-void

    .line 866
    :catchall_0
    move-exception v2

    .line 867
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 866
    throw v2
.end method

.method public setDataAllowed(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2225
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2226
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2228
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2230
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2232
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2233
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2237
    return-void

    .line 2234
    :catchall_0
    move-exception v2

    .line 2235
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2234
    throw v2
.end method

.method public setDataProfile(ILjava/util/ArrayList;Z)V
    .locals 5
    .param p1, "serial"    # I
    .param p3, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2277
    .local p2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2278
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2280
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2281
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2283
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2285
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2286
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2290
    return-void

    .line 2287
    :catchall_0
    move-exception v2

    .line 2288
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2287
    throw v2
.end method

.method public setDmDynamicPram(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dyPram"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3742
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3743
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3745
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3749
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3750
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3752
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3754
    return-void

    .line 3751
    :catchall_0
    move-exception v2

    .line 3752
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3751
    throw v2
.end method

.method public setDmPcscf(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pcscf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3725
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3726
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3728
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3730
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3732
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3733
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3735
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3737
    return-void

    .line 3734
    :catchall_0
    move-exception v2

    .line 3735
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3734
    throw v2
.end method

.method public setDmSmsPsi(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsPsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3776
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3777
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3779
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3783
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3784
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3786
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3788
    return-void

    .line 3785
    :catchall_0
    move-exception v2

    .line 3786
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3785
    throw v2
.end method

.method public setDmTimer(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "timer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3759
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3760
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3762
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3764
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3766
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3767
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3771
    return-void

    .line 3768
    :catchall_0
    move-exception v2

    .line 3769
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3768
    throw v2
.end method

.method public setDsFlowNvWriteConfigPara(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index1"    # I
    .param p3, "index2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3608
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3610
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3611
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3613
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3615
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3616
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3618
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3620
    return-void

    .line 3617
    :catchall_0
    move-exception v2

    .line 3618
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3617
    throw v2
.end method

.method public setEccNum(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ecclist_withcard"    # Ljava/lang/String;
    .param p3, "ecclist_nocard"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2762
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2763
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2765
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2768
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2770
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2771
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2775
    return-void

    .line 2772
    :catchall_0
    move-exception v2

    .line 2773
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2772
    throw v2
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1016
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1018
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1020
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1022
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1026
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1027
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1031
    return-void

    .line 1028
    :catchall_0
    move-exception v2

    .line 1029
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1028
    throw v2
.end method

.method public setGsmBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1687
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1688
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1690
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1692
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1694
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1695
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1699
    return-void

    .line 1696
    :catchall_0
    move-exception v2

    .line 1697
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1696
    throw v2
.end method

.method public setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1670
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1671
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1673
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1677
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1678
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1682
    return-void

    .line 1679
    :catchall_0
    move-exception v2

    .line 1680
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1679
    throw v2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4453
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4457
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4458
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4460
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4462
    return-void

    .line 4459
    :catchall_0
    move-exception v2

    .line 4460
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4459
    throw v2
.end method

.method public setHwRFChannelSwitch(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rfChannel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4269
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4270
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4271
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4275
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4276
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4280
    return-void

    .line 4277
    :catchall_0
    move-exception v2

    .line 4278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4277
    throw v2
.end method

.method public setImsCallWaiting(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2930
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2931
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2933
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2934
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2936
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2938
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2939
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2943
    return-void

    .line 2940
    :catchall_0
    move-exception v2

    .line 2941
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2940
    throw v2
.end method

.method public setImsDomain(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3149
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3150
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3152
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3154
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3156
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3157
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3159
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3161
    return-void

    .line 3158
    :catchall_0
    move-exception v2

    .line 3159
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3158
    throw v2
.end method

.method public setImsSwitch(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2982
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2983
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2985
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2987
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2989
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2990
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2994
    return-void

    .line 2991
    :catchall_0
    move-exception v2

    .line 2992
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2991
    throw v2
.end method

.method public setImsvtCapability(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "capabilityType"    # I
    .param p3, "capabilitySwitch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4081
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4082
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4083
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4084
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4085
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4087
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4089
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4090
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4094
    return-void

    .line 4091
    :catchall_0
    move-exception v2

    .line 4092
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4091
    throw v2
.end method

.method public setIndicationFilter(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "indicationFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2462
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2463
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2465
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2467
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2469
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2470
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2472
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2474
    return-void

    .line 2471
    :catchall_0
    move-exception v2

    .line 2472
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2471
    throw v2
.end method

.method public setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dataProfileInfo"    # Landroid/hardware/radio/V1_0/DataProfileInfo;
    .param p3, "modemCognitive"    # Z
    .param p4, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2019
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2020
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2022
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2023
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2024
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2026
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2028
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2029
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2033
    return-void

    .line 2030
    :catchall_0
    move-exception v2

    .line 2031
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2030
    throw v2
.end method

.method public setIsmcoex(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "p_lte_freq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3507
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3508
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3509
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3510
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3512
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3514
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3515
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3519
    return-void

    .line 3516
    :catchall_0
    move-exception v2

    .line 3517
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3516
    throw v2
.end method

.method public setLocationUpdates(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1451
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1452
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1454
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1458
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1459
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1463
    return-void

    .line 1460
    :catchall_0
    move-exception v2

    .line 1461
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1460
    throw v2
.end method

.method public setLongMessage(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "msgFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3083
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3084
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3086
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3088
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3090
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3091
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3095
    return-void

    .line 3092
    :catchall_0
    move-exception v2

    .line 3093
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3092
    throw v2
.end method

.method public setLteReleaseVersion(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3116
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3117
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3119
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3121
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3123
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3124
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3128
    return-void

    .line 3125
    :catchall_0
    move-exception v2

    .line 3126
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3125
    throw v2
.end method

.method public setMute(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1187
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1189
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1191
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1193
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1194
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1198
    return-void

    .line 1195
    :catchall_0
    move-exception v2

    .line 1196
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1195
    throw v2
.end method

.method public setNetworkRatAndSrvDomain(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "at_rat"    # I
    .param p3, "srv_domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3371
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3372
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3374
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3375
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3377
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3379
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3380
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3382
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3384
    return-void

    .line 3381
    :catchall_0
    move-exception v2

    .line 3382
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3381
    throw v2
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1072
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1075
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1077
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1078
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1082
    return-void

    .line 1079
    :catchall_0
    move-exception v2

    .line 1080
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1079
    throw v2
.end method

.method public setNetworkSelectionModeManual(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1088
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1090
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1092
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1095
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1099
    return-void

    .line 1096
    :catchall_0
    move-exception v2

    .line 1097
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1096
    throw v2
.end method

.method public setNickName(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3793
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3794
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3796
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3798
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3800
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3801
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3803
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3805
    return-void

    .line 3802
    :catchall_0
    move-exception v2

    .line 3803
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3802
    throw v2
.end method

.method public setPolEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # Ljava/lang/String;
    .param p3, "opern"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3488
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3489
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3491
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3495
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3497
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3498
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3500
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3502
    return-void

    .line 3499
    :catchall_0
    move-exception v2

    .line 3500
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3499
    throw v2
.end method

.method public setPowerGrade(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "powergrade"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2531
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2533
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2537
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2538
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2540
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2542
    return-void

    .line 2539
    :catchall_0
    move-exception v2

    .line 2540
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2539
    throw v2
.end method

.method public setPreferredNetworkType(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "nwType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1403
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1405
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1409
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1410
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1414
    return-void

    .line 1411
    :catchall_0
    move-exception v2

    .line 1412
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1411
    throw v2
.end method

.method public setPreferredVoicePrivacy(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1551
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1552
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1554
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1556
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1558
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1559
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1563
    return-void

    .line 1560
    :catchall_0
    move-exception v2

    .line 1561
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1560
    throw v2
.end method

.method public setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2328
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2330
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2334
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2335
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2339
    return-void

    .line 2336
    :catchall_0
    move-exception v2

    .line 2337
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2336
    throw v2
.end method

.method public setRadioPower(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 703
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 705
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 709
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 710
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 714
    return-void

    .line 711
    :catchall_0
    move-exception v2

    .line 712
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 711
    throw v2
.end method

.method public setRatCombinePrio(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "combineMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4251
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4252
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4253
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4254
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4256
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4258
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4259
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4263
    return-void

    .line 4260
    :catchall_0
    move-exception v2

    .line 4261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4260
    throw v2
.end method

.method public setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Landroid/hardware/radio/V1_0/IRadioResponse;
    .param p2, "radioIndication"    # Landroid/hardware/radio/V1_0/IRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 313
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    if-nez p1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 315
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 317
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 319
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 320
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 321
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 325
    return-void

    .line 314
    .end local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_0
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_1

    .line 322
    .restart local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_0
    move-exception v2

    .line 323
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 322
    throw v2
.end method

.method public setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
    .param p2, "radioIndication"    # Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2513
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2514
    if-nez p1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2515
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2517
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2519
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2520
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2521
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2525
    return-void

    .line 2514
    .end local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_0
    invoke-interface {p1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    goto :goto_0

    .line 2515
    :cond_1
    invoke-interface {p2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_1

    .line 2522
    .restart local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_0
    move-exception v2

    .line 2523
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2522
    throw v2
.end method

.method public setRiseCdmaCutoffFreq(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4286
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4287
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4288
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4292
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4293
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4297
    return-void

    .line 4294
    :catchall_0
    move-exception v2

    .line 4295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4294
    throw v2
.end method

.method public setSciChgCfg(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "slot1"    # I
    .param p3, "slot2"    # I
    .param p4, "slot3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3572
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3573
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3574
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3575
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3576
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3577
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3579
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3581
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3582
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3584
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3586
    return-void

    .line 3583
    :catchall_0
    move-exception v2

    .line 3584
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3583
    throw v2
.end method

.method public setSimCardPower(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "powerUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2479
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2480
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2482
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2484
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2486
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2487
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2491
    return-void

    .line 2488
    :catchall_0
    move-exception v2

    .line 2489
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2488
    throw v2
.end method

.method public setSimSlot(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "modem1ToSlot"    # I
    .param p3, "modem2ToSlot"    # I
    .param p4, "modem3ToSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2644
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2646
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2647
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2648
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2650
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2652
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2653
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2657
    return-void

    .line 2654
    :catchall_0
    move-exception v2

    .line 2655
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2654
    throw v2
.end method

.method public setSmscAddress(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1852
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1853
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1855
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1857
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1859
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1860
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1864
    return-void

    .line 1861
    :catchall_0
    move-exception v2

    .line 1862
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1861
    throw v2
.end method

.method public setSuppServiceNotifications(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1252
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1254
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1256
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1258
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1259
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1263
    return-void

    .line 1260
    :catchall_0
    move-exception v2

    .line 1261
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1260
    throw v2
.end method

.method public setTTYMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1518
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1519
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1521
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1523
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1525
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1526
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1530
    return-void

    .line 1527
    :catchall_0
    move-exception v2

    .line 1528
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1527
    throw v2
.end method

.method public setTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "strtime"    # Ljava/lang/String;
    .param p4, "zone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3674
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3675
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3677
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3678
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3683
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3684
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3686
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3688
    return-void

    .line 3685
    :catchall_0
    move-exception v2

    .line 3686
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3685
    throw v2
.end method

.method public setUeOperationMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3625
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3626
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3628
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3630
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3632
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3633
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3635
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3637
    return-void

    .line 3634
    :catchall_0
    move-exception v2

    .line 3635
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3634
    throw v2
.end method

.method public setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "uiccSub"    # Landroid/hardware/radio/V1_0/SelectUiccSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2208
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2209
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2211
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2213
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2215
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2216
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2218
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2220
    return-void

    .line 2217
    :catchall_0
    move-exception v2

    .line 2218
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2217
    throw v2
.end method

.method public setVoicePreferStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2813
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2814
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2816
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2820
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2821
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2825
    return-void

    .line 2822
    :catchall_0
    move-exception v2

    .line 2823
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2822
    throw v2
.end method

.method public setVoicecallBackGroundState(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2780
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2781
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2783
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2785
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2787
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2788
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2792
    return-void

    .line 2789
    :catchall_0
    move-exception v2

    .line 2790
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2789
    throw v2
.end method

.method public setVsimSimState(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .param p3, "enable"    # I
    .param p4, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3389
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3390
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3392
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3393
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3394
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3396
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3398
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3399
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3403
    return-void

    .line 3400
    :catchall_0
    move-exception v2

    .line 3401
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3400
    throw v2
.end method

.method public setVsimTEEDataReady(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "apn"    # I
    .param p3, "dh"    # I
    .param p4, "sim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4303
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4305
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4306
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4307
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4311
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4312
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4314
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4316
    return-void

    .line 4313
    :catchall_0
    move-exception v2

    .line 4314
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4313
    throw v2
.end method

.method public setVtLlteQualityRptCfg(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enabled"    # I
    .param p3, "threshHold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3286
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3288
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3289
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3291
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3293
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3294
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3296
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3298
    return-void

    .line 3295
    :catchall_0
    move-exception v2

    .line 3296
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3295
    throw v2
.end method

.method public setWifiEmergencyAid(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "wifiAid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4099
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4100
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4102
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4104
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4106
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4107
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4109
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4111
    return-void

    .line 4108
    :catchall_0
    move-exception v2

    .line 4109
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4108
    throw v2
.end method

.method public setWifiPowerGrade(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "power_grade"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3336
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3338
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3342
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3343
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3347
    return-void

    .line 3344
    :catchall_0
    move-exception v2

    .line 3345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3344
    throw v2
.end method

.method public setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "dataProfileInfo"    # Landroid/hardware/radio/V1_0/DataProfileInfo;
    .param p4, "modemCognitive"    # Z
    .param p5, "roamingAllowed"    # Z
    .param p6, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 774
    invoke-virtual {p3, v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 775
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 776
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 777
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 779
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 781
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 782
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 786
    return-void

    .line 783
    :catchall_0
    move-exception v2

    .line 784
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 783
    throw v2
.end method

.method public setupDataCallEmergency(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4186
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4187
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4190
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4192
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4193
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4195
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4197
    return-void

    .line 4194
    :catchall_0
    move-exception v2

    .line 4195
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4194
    throw v2
.end method

.method public simlockNwDataWrite(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "field"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4134
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4135
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4137
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4138
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4140
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4142
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4143
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4145
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4147
    return-void

    .line 4144
    :catchall_0
    move-exception v2

    .line 4145
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4144
    throw v2
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1121
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1123
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1127
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1128
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1132
    return-void

    .line 1129
    :catchall_0
    move-exception v2

    .line 1130
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1129
    throw v2
.end method

.method public startLceService(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "reportInterval"    # I
    .param p3, "pullMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2344
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2345
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2347
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2348
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2352
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2353
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2357
    return-void

    .line 2354
    :catchall_0
    move-exception v2

    .line 2355
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2354
    throw v2
.end method

.method public stopDtmf(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1137
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1138
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1141
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1143
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1144
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1148
    return-void

    .line 1145
    :catchall_0
    move-exception v2

    .line 1146
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1145
    throw v2
.end method

.method public stopLceService(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2362
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2363
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2366
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2368
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2369
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2373
    return-void

    .line 2370
    :catchall_0
    move-exception v2

    .line 2371
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2370
    throw v2
.end method

.method public supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 384
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 386
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 391
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 392
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 396
    return-void

    .line 393
    :catchall_0
    move-exception v2

    .line 394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 393
    throw v2
.end method

.method public supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 347
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 349
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 354
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 355
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 359
    return-void

    .line 356
    :catchall_0
    move-exception v2

    .line 357
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 356
    throw v2
.end method

.method public supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 402
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 404
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 408
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 410
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 411
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v2

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 412
    throw v2
.end method

.method public supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 365
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 367
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 373
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 374
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 378
    return-void

    .line 375
    :catchall_0
    move-exception v2

    .line 376
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 375
    throw v2
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 459
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 461
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 463
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 465
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 466
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 470
    return-void

    .line 467
    :catchall_0
    move-exception v2

    .line 468
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 467
    throw v2
.end method

.method public switchImsWaitingOrHoldingAndActiveWithType(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4234
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4235
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4237
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4239
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4241
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4242
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4244
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4246
    return-void

    .line 4243
    :catchall_0
    move-exception v2

    .line 4244
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4243
    throw v2
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 575
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 578
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 580
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 581
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 585
    return-void

    .line 582
    :catchall_0
    move-exception v2

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 582
    throw v2
.end method

.method public testVoiceLoopback(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4338
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4339
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4340
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4342
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4344
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4345
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4347
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4349
    return-void

    .line 4346
    :catchall_0
    move-exception v2

    .line 4347
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4346
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of vendor.huawei.hardware.radio@1.0::IRadio]@Proxy"

    return-object v1
.end method

.method public uiccAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "uiccAuthParam"    # Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3199
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3200
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3202
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3204
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3206
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3207
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3209
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3211
    return-void

    .line 3208
    :catchall_0
    move-exception v2

    .line 3209
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3208
    throw v2
.end method

.method public uiccGbaBootStrap(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "gbaParam"    # Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3216
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3217
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3219
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3223
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3224
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3226
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3228
    return-void

    .line 3225
    :catchall_0
    move-exception v2

    .line 3226
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3225
    throw v2
.end method

.method public uiccKsNafAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ksNafAuthParam"    # Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3269
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3271
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3275
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3276
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3280
    return-void

    .line 3277
    :catchall_0
    move-exception v2

    .line 3278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3277
    throw v2
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4523
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public updateUiccFile(ILvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "uiccUpdateParam"    # Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3234
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3236
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3238
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3240
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3241
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3243
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3245
    return-void

    .line 3242
    :catchall_0
    move-exception v2

    .line 3243
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3242
    throw v2
.end method

.method public vowifiToImsaMsg(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3182
    .local p2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3183
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3185
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3187
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3189
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3190
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3194
    return-void

    .line 3191
    :catchall_0
    move-exception v2

    .line 3192
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3191
    throw v2
.end method

.method public vsimBasebandVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3693
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3694
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3697
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3699
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3700
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3702
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3704
    return-void

    .line 3701
    :catchall_0
    move-exception v2

    .line 3702
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3701
    throw v2
.end method

.method public vsimCheckCard(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3591
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3592
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3597
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3598
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3600
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3602
    return-void

    .line 3599
    :catchall_0
    move-exception v2

    .line 3600
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3599
    throw v2
.end method

.method public vsimPower(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3642
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3643
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3644
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3646
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3648
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3649
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3651
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3653
    return-void

    .line 3650
    :catchall_0
    move-exception v2

    .line 3651
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3650
    throw v2
.end method

.method public writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cdmaSms"    # Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1771
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1773
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1775
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1777
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1778
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1782
    return-void

    .line 1779
    :catchall_0
    move-exception v2

    .line 1780
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1779
    throw v2
.end method

.method public writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsWriteArgs"    # Landroid/hardware/radio/V1_0/SmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1269
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1271
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1275
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1276
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1280
    return-void

    .line 1277
    :catchall_0
    move-exception v2

    .line 1278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1277
    throw v2
.end method
