.class public final Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_1/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_1/IRadio;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 85
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
    .line 755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 756
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 759
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 761
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 762
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 766
    return-void

    .line 763
    :catchall_0
    move-exception v2

    .line 764
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 763
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
    .line 2673
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2674
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2676
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2678
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2680
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2681
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2685
    return-void

    .line 2682
    :catchall_0
    move-exception v2

    .line 2683
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2682
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
    .line 1729
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1730
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1732
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1733
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1735
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1737
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1738
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1742
    return-void

    .line 1739
    :catchall_0
    move-exception v2

    .line 1740
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1739
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
    .line 1431
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1432
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1434
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1438
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1439
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1443
    return-void

    .line 1440
    :catchall_0
    move-exception v2

    .line 1441
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1440
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
    .line 737
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 738
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 740
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 741
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 745
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 746
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 750
    return-void

    .line 747
    :catchall_0
    move-exception v2

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 747
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
    .line 2707
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2708
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2710
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2712
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2714
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2715
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2719
    return-void

    .line 2716
    :catchall_0
    move-exception v2

    .line 2717
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2716
    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelImsVideoCall(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4250
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4251
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4252
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4253
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4255
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4257
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4258
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4260
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4262
    return-void

    .line 4259
    :catchall_0
    move-exception v2

    .line 4260
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4259
    throw v2
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
    .line 619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 620
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 623
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 626
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 630
    return-void

    .line 627
    :catchall_0
    move-exception v2

    .line 628
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 627
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
    .line 233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 234
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 236
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 240
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 242
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 243
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 247
    return-void

    .line 244
    :catchall_0
    move-exception v2

    .line 245
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 244
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
    .line 214
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 215
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 217
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 223
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 224
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 228
    return-void

    .line 225
    :catchall_0
    move-exception v2

    .line 226
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 225
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
    .line 3097
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3098
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3101
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3103
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3104
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3106
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3108
    return-void

    .line 3105
    :catchall_0
    move-exception v2

    .line 3106
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3105
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
    .line 384
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 385
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 388
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 390
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 391
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 395
    return-void

    .line 392
    :catchall_0
    move-exception v2

    .line 393
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 392
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
    .line 2860
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2861
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2862
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2863
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2865
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2867
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2868
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2870
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2872
    return-void

    .line 2869
    :catchall_0
    move-exception v2

    .line 2870
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2869
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
    .line 2843
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2844
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2846
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2848
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2850
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2851
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2853
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2855
    return-void

    .line 2852
    :catchall_0
    move-exception v2

    .line 2853
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2852
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
    .line 771
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 772
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 774
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 775
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 777
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 779
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 780
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 784
    return-void

    .line 781
    :catchall_0
    move-exception v2

    .line 782
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 781
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
    .line 3996
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3997
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3998
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4000
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4002
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4003
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4005
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4007
    return-void

    .line 4004
    :catchall_0
    move-exception v2

    .line 4005
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4004
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
    .line 1581
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1582
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1584
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1588
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1589
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1593
    return-void

    .line 1590
    :catchall_0
    move-exception v2

    .line 1591
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1590
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
    .line 1079
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1080
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1082
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1084
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1086
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1087
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1091
    return-void

    .line 1088
    :catchall_0
    move-exception v2

    .line 1089
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1088
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
    .line 285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 286
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 288
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 292
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 293
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 297
    return-void

    .line 294
    :catchall_0
    move-exception v2

    .line 295
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 294
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
    .line 1614
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1615
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1618
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1620
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1621
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1625
    return-void

    .line 1622
    :catchall_0
    move-exception v2

    .line 1623
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1622
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
    .line 1180
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1181
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1186
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1187
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1191
    return-void

    .line 1188
    :catchall_0
    move-exception v2

    .line 1189
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1188
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
    .line 2222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2223
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2226
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2228
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2229
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2233
    return-void

    .line 2230
    :catchall_0
    move-exception v2

    .line 2231
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2230
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
    .line 1113
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1114
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1119
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1120
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1124
    return-void

    .line 1121
    :catchall_0
    move-exception v2

    .line 1122
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1121
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
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

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

.method public getAvailableNetworks(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 899
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 902
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 904
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 905
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 909
    return-void

    .line 906
    :catchall_0
    move-exception v2

    .line 907
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 906
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
    .line 947
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 951
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 953
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 954
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 958
    return-void

    .line 955
    :catchall_0
    move-exception v2

    .line 956
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 955
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
    .line 1548
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1549
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1554
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1555
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1559
    return-void

    .line 1556
    :catchall_0
    move-exception v2

    .line 1557
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1556
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
    .line 668
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 669
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 671
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 673
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 675
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 676
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 680
    return-void

    .line 677
    :catchall_0
    move-exception v2

    .line 678
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 677
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
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 709
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

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

.method public getCardType(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2358
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2361
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2363
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2364
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2366
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2368
    return-void

    .line 2365
    :catchall_0
    move-exception v2

    .line 2366
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2365
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
    .line 1498
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1499
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1502
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1504
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1505
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1509
    return-void

    .line 1506
    :catchall_0
    move-exception v2

    .line 1507
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1506
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
    .line 4115
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4116
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4121
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4122
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4124
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4126
    return-void

    .line 4123
    :catchall_0
    move-exception v2

    .line 4124
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4123
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
    .line 2373
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2374
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2377
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2379
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2380
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2384
    return-void

    .line 2381
    :catchall_0
    move-exception v2

    .line 2382
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2381
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
    .line 2489
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2493
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2495
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2496
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2498
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2500
    return-void

    .line 2497
    :catchall_0
    move-exception v2

    .line 2498
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2497
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
    .line 1296
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1297
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1300
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1302
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1303
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1307
    return-void

    .line 1304
    :catchall_0
    move-exception v2

    .line 1305
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1304
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
    .line 1696
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1697
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1700
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1702
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1703
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1707
    return-void

    .line 1704
    :catchall_0
    move-exception v2

    .line 1705
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1704
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
    .line 1780
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1781
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1784
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1786
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1787
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1791
    return-void

    .line 1788
    :catchall_0
    move-exception v2

    .line 1789
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1788
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
    .line 4012
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4013
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4014
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4018
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4019
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4021
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4023
    return-void

    .line 4020
    :catchall_0
    move-exception v2

    .line 4021
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4020
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
    .line 2827
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2828
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2831
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2833
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2834
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2836
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2838
    return-void

    .line 2835
    :catchall_0
    move-exception v2

    .line 2836
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2835
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
    .line 1013
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1014
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1019
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1020
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1024
    return-void

    .line 1021
    :catchall_0
    move-exception v2

    .line 1022
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1021
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
    .line 635
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 636
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 639
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 641
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 642
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 646
    return-void

    .line 643
    :catchall_0
    move-exception v2

    .line 644
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 643
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
    .line 269
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 270
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 275
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 276
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v2

    .line 278
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 277
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
    .line 2657
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2658
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2663
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2664
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2666
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2668
    return-void

    .line 2665
    :catchall_0
    move-exception v2

    .line 2666
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2665
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
    .line 1029
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1030
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1033
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1035
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1036
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1040
    return-void

    .line 1037
    :catchall_0
    move-exception v2

    .line 1038
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1037
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
    .line 464
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 465
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 470
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 475
    return-void

    .line 472
    :catchall_0
    move-exception v2

    .line 473
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 472
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
    .line 4401
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4402
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4404
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4406
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4407
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4408
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4410
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4411
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4414
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4412
    return-object v0

    .line 4413
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v3

    .line 4414
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4413
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
    .line 1598
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1599
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1604
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1605
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1609
    return-void

    .line 1606
    :catchall_0
    move-exception v2

    .line 1607
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1606
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
    .line 3350
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3351
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3356
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3357
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3359
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3361
    return-void

    .line 3358
    :catchall_0
    move-exception v2

    .line 3359
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3358
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
    .line 3620
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3621
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3626
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3627
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3629
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3631
    return-void

    .line 3628
    :catchall_0
    move-exception v2

    .line 3629
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3628
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
    .line 3604
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3605
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3610
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3611
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3613
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3615
    return-void

    .line 3612
    :catchall_0
    move-exception v2

    .line 3613
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3612
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
    .line 3636
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3637
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3642
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3643
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3645
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3647
    return-void

    .line 3644
    :catchall_0
    move-exception v2

    .line 3645
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3644
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
    .line 3684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3685
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3688
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3690
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3691
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3693
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3695
    return-void

    .line 3692
    :catchall_0
    move-exception v2

    .line 3693
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3692
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
    .line 3334
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3335
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3338
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3340
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3341
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3343
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3345
    return-void

    .line 3342
    :catchall_0
    move-exception v2

    .line 3343
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3342
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
    .line 2540
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2541
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2544
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2546
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2547
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2549
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2551
    return-void

    .line 2548
    :catchall_0
    move-exception v2

    .line 2549
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2548
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
    .line 789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 790
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 792
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 795
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 797
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 799
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 800
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 804
    return-void

    .line 801
    :catchall_0
    move-exception v2

    .line 802
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 801
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
    .line 1448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1449
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1452
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1454
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1455
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1459
    return-void

    .line 1456
    :catchall_0
    move-exception v2

    .line 1457
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1456
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
    .line 2036
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2037
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2040
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2042
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2043
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2047
    return-void

    .line 2044
    :catchall_0
    move-exception v2

    .line 2045
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2044
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
    .line 4324
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 4325
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4327
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 4329
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4330
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4331
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4333
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4335
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 4337
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 4339
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 4340
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 4338
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 4342
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 4343
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 4344
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 4346
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 4347
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_1
    const/16 v4, 0x20

    if-ge v14, v4, :cond_0

    .line 4348
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 4349
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 4347
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4352
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4343
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4358
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_1
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 4356
    return-object v15

    .line 4357
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_0
    move-exception v4

    .line 4358
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 4357
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
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

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

.method public getIccCardStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 125
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 128
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 130
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 131
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 135
    return-void

    .line 132
    :catchall_0
    move-exception v2

    .line 133
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 132
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
    .line 2421
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2422
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2427
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2428
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2432
    return-void

    .line 2429
    :catchall_0
    move-exception v2

    .line 2430
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2429
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
    .line 2960
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2961
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2962
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2966
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2967
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2971
    return-void

    .line 2968
    :catchall_0
    move-exception v2

    .line 2969
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2968
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
    .line 2690
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2691
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2693
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2695
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2697
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2698
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2700
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2702
    return-void

    .line 2699
    :catchall_0
    move-exception v2

    .line 2700
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2699
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
    .line 1832
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1833
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1836
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1838
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1839
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1843
    return-void

    .line 1840
    :catchall_0
    move-exception v2

    .line 1841
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1840
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
    .line 2793
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2794
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2797
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2799
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2800
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2804
    return-void

    .line 2801
    :catchall_0
    move-exception v2

    .line 2802
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2801
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
    .line 302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 303
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 305
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 309
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 310
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 314
    return-void

    .line 311
    :catchall_0
    move-exception v2

    .line 312
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 311
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
    .line 3946
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3947
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3948
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3949
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3951
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3953
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3954
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3956
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3958
    return-void

    .line 3955
    :catchall_0
    move-exception v2

    .line 3956
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3955
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
    .line 416
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 417
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 422
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 423
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 427
    return-void

    .line 424
    :catchall_0
    move-exception v2

    .line 425
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 424
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
    .line 3859
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3860
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3863
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3865
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3866
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3868
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3870
    return-void

    .line 3867
    :catchall_0
    move-exception v2

    .line 3868
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3867
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
    .line 3113
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3114
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3119
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3120
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3122
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3124
    return-void

    .line 3121
    :catchall_0
    move-exception v2

    .line 3122
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3121
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
    .line 2927
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2928
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2931
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2933
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2934
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2938
    return-void

    .line 2935
    :catchall_0
    move-exception v2

    .line 2936
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2935
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
    .line 3503
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3504
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3505
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3509
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3510
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3512
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3514
    return-void

    .line 3511
    :catchall_0
    move-exception v2

    .line 3512
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3511
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
    .line 2188
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2189
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2192
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2194
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2195
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2199
    return-void

    .line 2196
    :catchall_0
    move-exception v2

    .line 2197
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2196
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
    .line 997
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 998
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1001
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1003
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1004
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1008
    return-void

    .line 1005
    :catchall_0
    move-exception v2

    .line 1006
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1005
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
    .line 1229
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1233
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1235
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1236
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1240
    return-void

    .line 1237
    :catchall_0
    move-exception v2

    .line 1238
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1237
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
    .line 849
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 855
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 856
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 860
    return-void

    .line 857
    :catchall_0
    move-exception v2

    .line 858
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 857
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
    .line 3668
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3669
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3672
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3674
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3675
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3677
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3679
    return-void

    .line 3676
    :catchall_0
    move-exception v2

    .line 3677
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3676
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
    .line 480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 481
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 484
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 486
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 487
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 491
    return-void

    .line 488
    :catchall_0
    move-exception v2

    .line 489
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 488
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
    .line 3234
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3235
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3238
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3240
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

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

.method public getPolCapability(I)V
    .locals 5
    .param p1, "serial"    # I
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

    .line 3254
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3256
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3257
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3259
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3261
    return-void

    .line 3258
    :catchall_0
    move-exception v2

    .line 3259
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3258
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
    .line 3266
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3267
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3272
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3273
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3275
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3277
    return-void

    .line 3274
    :catchall_0
    move-exception v2

    .line 3275
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3274
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
    .line 1213
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1214
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1217
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1219
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1220
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1224
    return-void

    .line 1221
    :catchall_0
    move-exception v2

    .line 1222
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1221
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
    .line 1362
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1363
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1366
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1368
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1369
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1373
    return-void

    .line 1370
    :catchall_0
    move-exception v2

    .line 1371
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1370
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
    .line 2105
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2106
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2109
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2111
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2112
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2116
    return-void

    .line 2113
    :catchall_0
    move-exception v2

    .line 2114
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2113
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
    .line 3318
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3319
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3322
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3324
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3325
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3327
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3329
    return-void

    .line 3326
    :catchall_0
    move-exception v2

    .line 3327
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3326
    throw v2
.end method

.method public getRcsSwitchState(I)V
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
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4206
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4208
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf3

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

.method public getSignalStrength(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 433
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 438
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 439
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 443
    return-void

    .line 440
    :catchall_0
    move-exception v2

    .line 441
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 440
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
    .line 2405
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2406
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2411
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2412
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2416
    return-void

    .line 2413
    :catchall_0
    move-exception v2

    .line 2414
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2413
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
    .line 2341
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2342
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2345
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2347
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2348
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2352
    return-void

    .line 2349
    :catchall_0
    move-exception v2

    .line 2350
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2349
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
    .line 2456
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2457
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2462
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2463
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2465
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2467
    return-void

    .line 2464
    :catchall_0
    move-exception v2

    .line 2465
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2464
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
    .line 3652
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3653
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3654
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3656
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3658
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3659
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3661
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3663
    return-void

    .line 3660
    :catchall_0
    move-exception v2

    .line 3661
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3660
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
    .line 1630
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1631
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1634
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1636
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1637
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1641
    return-void

    .line 1638
    :catchall_0
    move-exception v2

    .line 1639
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1638
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
    .line 3218
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3219
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3222
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3224
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3225
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3227
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3229
    return-void

    .line 3226
    :catchall_0
    move-exception v2

    .line 3227
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3226
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
    .line 1329
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1330
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1333
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1335
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1336
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1340
    return-void

    .line 1337
    :catchall_0
    move-exception v2

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1337
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
    .line 3044
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3045
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3047
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3048
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3052
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3053
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3057
    return-void

    .line 3054
    :catchall_0
    move-exception v2

    .line 3055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3054
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
    .line 2624
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2625
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2628
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2630
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2631
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2635
    return-void

    .line 2632
    :catchall_0
    move-exception v2

    .line 2633
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2632
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
    .line 1764
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1765
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1768
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1770
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1771
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1775
    return-void

    .line 1772
    :catchall_0
    move-exception v2

    .line 1773
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1772
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
    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 449
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 452
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 454
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 455
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 459
    return-void

    .line 456
    :catchall_0
    move-exception v2

    .line 457
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 456
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
    .line 2591
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2592
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2597
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2598
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2602
    return-void

    .line 2599
    :catchall_0
    move-exception v2

    .line 2600
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2599
    throw v2
.end method

.method public getVolteDomain(I)V
    .locals 5
    .param p1, "serial"    # I
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
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4238
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4240
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4241
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4243
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4245
    return-void

    .line 4242
    :catchall_0
    move-exception v2

    .line 4243
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4242
    throw v2
.end method

.method public getVolteImpi(I)V
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
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4222
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4224
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf4

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

.method public getVsimSimState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3202
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3203
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3206
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3208
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3209
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3211
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3213
    return-void

    .line 3210
    :catchall_0
    move-exception v2

    .line 3211
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3210
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
    .line 1163
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1164
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1166
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1170
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1171
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1175
    return-void

    .line 1172
    :catchall_0
    move-exception v2

    .line 1173
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1172
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
    .line 319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 320
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 322
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 324
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 326
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 327
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 331
    return-void

    .line 328
    :catchall_0
    move-exception v2

    .line 329
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 328
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
    .line 352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 353
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 358
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 359
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 363
    return-void

    .line 360
    :catchall_0
    move-exception v2

    .line 361
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 360
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
    .line 336
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 342
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 343
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 347
    return-void

    .line 344
    :catchall_0
    move-exception v2

    .line 345
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 344
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
    .line 1900
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1901
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1903
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1905
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1907
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1908
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1912
    return-void

    .line 1909
    :catchall_0
    move-exception v2

    .line 1910
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1909
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
    .line 585
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 586
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 588
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 592
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 593
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 597
    return-void

    .line 594
    :catchall_0
    move-exception v2

    .line 595
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 594
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
    .line 1882
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1883
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1885
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1888
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1890
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1891
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1895
    return-void

    .line 1892
    :catchall_0
    move-exception v2

    .line 1893
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1892
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
    .line 1865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1866
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1868
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1870
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1872
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1873
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1875
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1877
    return-void

    .line 1874
    :catchall_0
    move-exception v2

    .line 1875
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1874
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
    .line 1917
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1918
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1920
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1922
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1924
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1925
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1929
    return-void

    .line 1926
    :catchall_0
    move-exception v2

    .line 1927
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1926
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
    .line 3146
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3147
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3148
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3149
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3153
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3155
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3156
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3160
    return-void

    .line 3157
    :catchall_0
    move-exception v2

    .line 3158
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3157
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
    .line 2640
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2641
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2643
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2645
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2647
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2648
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2652
    return-void

    .line 2649
    :catchall_0
    move-exception v2

    .line 2650
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2649
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
    .line 3700
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3701
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3702
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3704
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3706
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3707
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3709
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3711
    return-void

    .line 3708
    :catchall_0
    move-exception v2

    .line 3709
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3708
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
    .line 3716
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3717
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3719
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3721
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3723
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3724
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3726
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3728
    return-void

    .line 3725
    :catchall_0
    move-exception v2

    .line 3726
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3725
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
    .line 4148
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4149
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4150
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4151
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4152
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4154
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4156
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4157
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4159
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4161
    return-void

    .line 4158
    :catchall_0
    move-exception v2

    .line 4159
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4158
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
    .line 4286
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4287
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4289
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4291
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4292
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4293
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4295
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4298
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4296
    return-object v0

    .line 4297
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4298
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4297
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
    .line 4305
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4306
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4308
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4310
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4311
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4312
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4314
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4317
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4315
    return-object v0

    .line 4316
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4317
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4316
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
    .line 4380
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 3842
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3843
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3845
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3847
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3849
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3850
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3854
    return-void

    .line 3851
    :catchall_0
    move-exception v2

    .line 3852
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3851
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
    .line 2759
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2760
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2762
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2764
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2766
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2767
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2769
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2771
    return-void

    .line 2768
    :catchall_0
    move-exception v2

    .line 2769
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2768
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
    .line 2742
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2743
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2745
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2749
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2750
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2752
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2754
    return-void

    .line 2751
    :catchall_0
    move-exception v2

    .line 2752
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2751
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
    .line 3963
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3964
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3965
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3966
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3968
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3970
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3971
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3973
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3975
    return-void

    .line 3972
    :catchall_0
    move-exception v2

    .line 3973
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3972
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
    .line 3792
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3793
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3794
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3795
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3796
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3798
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3800
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

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
    .line 3753
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3754
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3755
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3756
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3757
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3759
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3761
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3762
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3764
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3766
    return-void

    .line 3763
    :catchall_0
    move-exception v2

    .line 3764
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3763
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
    .line 4421
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4422
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4424
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4426
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4427
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4429
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4431
    return-void

    .line 4428
    :catchall_0
    move-exception v2

    .line 4429
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4428
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
    .line 1934
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1935
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1937
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1939
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1941
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1942
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1944
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1946
    return-void

    .line 1943
    :catchall_0
    move-exception v2

    .line 1944
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1943
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
    .line 1985
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1986
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1988
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1990
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1992
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

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
    .line 1968
    .local p2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1969
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1971
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1973
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1975
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1976
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1980
    return-void

    .line 1977
    :catchall_0
    move-exception v2

    .line 1978
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1977
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
    .line 1951
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1952
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1954
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1956
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1958
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1959
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1963
    return-void

    .line 1960
    :catchall_0
    move-exception v2

    .line 1961
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1960
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
    .line 2522
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2523
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2525
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2528
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2530
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2531
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2533
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2535
    return-void

    .line 2532
    :catchall_0
    move-exception v2

    .line 2533
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2532
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
    .line 4385
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4386
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4388
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4390
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4391
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4392
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4396
    return-void

    .line 4393
    :catchall_0
    move-exception v2

    .line 4394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4393
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
    .line 2172
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2173
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2176
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2178
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2179
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2183
    return-void

    .line 2180
    :catchall_0
    move-exception v2

    .line 2181
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2180
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
    .line 3452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3453
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3458
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3459
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3461
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3463
    return-void

    .line 3460
    :catchall_0
    move-exception v2

    .line 3461
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3460
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
    .line 400
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 401
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 404
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 406
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 407
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 411
    return-void

    .line 408
    :catchall_0
    move-exception v2

    .line 409
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 408
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
    .line 2809
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2810
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2812
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2813
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2815
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2817
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2818
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2822
    return-void

    .line 2819
    :catchall_0
    move-exception v2

    .line 2820
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2819
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
    .line 1663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1664
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1666
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1668
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1670
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1671
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1675
    return-void

    .line 1672
    :catchall_0
    move-exception v2

    .line 1673
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1672
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
    .line 1680
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1681
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1684
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1686
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1687
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1691
    return-void

    .line 1688
    :catchall_0
    move-exception v2

    .line 1689
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1688
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
    .line 2052
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2053
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2055
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2056
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2061
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

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
    .line 1712
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1713
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1715
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1719
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1720
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1724
    return-void

    .line 1721
    :catchall_0
    move-exception v2

    .line 1722
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1721
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
    .line 2089
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2090
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2095
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2096
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2100
    return-void

    .line 2097
    :catchall_0
    move-exception v2

    .line 2098
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2097
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
    .line 2894
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2895
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2898
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2900
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2901
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2905
    return-void

    .line 2902
    :catchall_0
    move-exception v2

    .line 2903
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2902
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
    .line 2290
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2291
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2295
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2296
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2300
    return-void

    .line 2297
    :catchall_0
    move-exception v2

    .line 2298
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2297
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
    .line 2389
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2390
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2393
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2395
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2396
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2400
    return-void

    .line 2397
    :catchall_0
    move-exception v2

    .line 2398
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2397
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
    .line 1395
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1396
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1398
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1400
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1402
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1404
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1405
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1409
    return-void

    .line 1406
    :catchall_0
    move-exception v2

    .line 1407
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1406
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
    .line 1378
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1379
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1381
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1385
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1386
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1390
    return-void

    .line 1387
    :catchall_0
    move-exception v2

    .line 1388
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1387
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
    .line 1414
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1417
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1419
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1421
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1422
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1426
    return-void

    .line 1423
    :catchall_0
    move-exception v2

    .line 1424
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1423
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
    .line 2238
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2239
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2241
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2242
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2246
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2247
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2251
    return-void

    .line 2248
    :catchall_0
    move-exception v2

    .line 2249
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2248
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
    .line 513
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 514
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 516
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 518
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 520
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 521
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 525
    return-void

    .line 522
    :catchall_0
    move-exception v2

    .line 523
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 522
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
    .line 1129
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1130
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1132
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1134
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1136
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1137
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1141
    return-void

    .line 1138
    :catchall_0
    move-exception v2

    .line 1139
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1138
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
    .line 1747
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1748
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1750
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1754
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1755
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1759
    return-void

    .line 1756
    :catchall_0
    move-exception v2

    .line 1757
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1756
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
    .line 1848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1849
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1851
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1855
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1856
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1860
    return-void

    .line 1857
    :catchall_0
    move-exception v2

    .line 1858
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1857
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
    .line 3910
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3911
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3913
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3914
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3916
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3918
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3919
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3921
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3923
    return-void

    .line 3920
    :catchall_0
    move-exception v2

    .line 3921
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3920
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
    .line 3771
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3772
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3774
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3775
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3776
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3777
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3778
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3780
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3782
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3783
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3785
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3787
    return-void

    .line 3784
    :catchall_0
    move-exception v2

    .line 3785
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3784
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
    .line 547
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 548
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 550
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 554
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 555
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 559
    return-void

    .line 556
    :catchall_0
    move-exception v2

    .line 557
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 556
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
    .line 530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 531
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 533
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 537
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 538
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 542
    return-void

    .line 539
    :catchall_0
    move-exception v2

    .line 540
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 539
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
    .line 1146
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1147
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1149
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1153
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1154
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1158
    return-void

    .line 1155
    :catchall_0
    move-exception v2

    .line 1156
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1155
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
    .line 602
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 603
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 605
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 607
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 609
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 610
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 614
    return-void

    .line 611
    :catchall_0
    move-exception v2

    .line 612
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 611
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
    .line 963
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 964
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 966
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 968
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 970
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 971
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 975
    return-void

    .line 972
    :catchall_0
    move-exception v2

    .line 973
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 972
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
    .line 2505
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2506
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2508
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2510
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2512
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2513
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2515
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2517
    return-void

    .line 2514
    :catchall_0
    move-exception v2

    .line 2515
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2514
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
    .line 2204
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2205
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2207
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2208
    invoke-virtual {p3, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2210
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2212
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2213
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2217
    return-void

    .line 2214
    :catchall_0
    move-exception v2

    .line 2215
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2214
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
    .line 3733
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3734
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3736
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3737
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3738
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3739
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3743
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3744
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3746
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3748
    return-void

    .line 3745
    :catchall_0
    move-exception v2

    .line 3746
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3745
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
    .line 1096
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1097
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1099
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1101
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1103
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1104
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1108
    return-void

    .line 1105
    :catchall_0
    move-exception v2

    .line 1106
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1105
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
    .line 830
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 831
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 833
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 839
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 840
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 844
    return-void

    .line 841
    :catchall_0
    move-exception v2

    .line 842
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 841
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
    .line 685
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 686
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 688
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 690
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 692
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

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
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 723
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 725
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 727
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 728
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 732
    return-void

    .line 729
    :catchall_0
    move-exception v2

    .line 730
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 729
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
    .line 1531
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1532
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1534
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1536
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1538
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1539
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1543
    return-void

    .line 1540
    :catchall_0
    move-exception v2

    .line 1541
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1540
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
    .line 1514
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1515
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1517
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1521
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1522
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1526
    return-void

    .line 1523
    :catchall_0
    move-exception v2

    .line 1524
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1523
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
    .line 2472
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2475
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2477
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2479
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2480
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2484
    return-void

    .line 2481
    :catchall_0
    move-exception v2

    .line 2482
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2481
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
    .line 1279
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1280
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1282
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1284
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1286
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1287
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1291
    return-void

    .line 1288
    :catchall_0
    move-exception v2

    .line 1289
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1288
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
    .line 1262
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1263
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1265
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1267
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1269
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1270
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1274
    return-void

    .line 1271
    :catchall_0
    move-exception v2

    .line 1272
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1271
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
    .line 1796
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1797
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1799
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1801
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1803
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1804
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1808
    return-void

    .line 1805
    :catchall_0
    move-exception v2

    .line 1806
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1805
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
    .line 651
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 652
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 654
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 656
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 658
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 659
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 663
    return-void

    .line 660
    :catchall_0
    move-exception v2

    .line 661
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 660
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
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2024
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2026
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2027
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2031
    return-void

    .line 2028
    :catchall_0
    move-exception v2

    .line 2029
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2028
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
    .line 2071
    .local p2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2072
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2074
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2075
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2077
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2079
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2080
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2084
    return-void

    .line 2081
    :catchall_0
    move-exception v2

    .line 2082
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2081
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
    .line 3536
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3537
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3539
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3541
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3543
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3544
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3546
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3548
    return-void

    .line 3545
    :catchall_0
    move-exception v2

    .line 3546
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3545
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
    .line 3519
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3520
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3522
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3526
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3527
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3529
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3531
    return-void

    .line 3528
    :catchall_0
    move-exception v2

    .line 3529
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3528
    throw v2
.end method

.method public setDmRcsConfig(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rcsCapability"    # I
    .param p3, "devConfig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4167
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4168
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4169
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4170
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4171
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4173
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4175
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4176
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4180
    return-void

    .line 4177
    :catchall_0
    move-exception v2

    .line 4178
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4177
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
    .line 3570
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3571
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3573
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3577
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3578
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3582
    return-void

    .line 3579
    :catchall_0
    move-exception v2

    .line 3580
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3579
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
    .line 3553
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3554
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3556
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3560
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3561
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3565
    return-void

    .line 3562
    :catchall_0
    move-exception v2

    .line 3563
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3562
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
    .line 3401
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3402
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3404
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3405
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3409
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3410
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3412
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3414
    return-void

    .line 3411
    :catchall_0
    move-exception v2

    .line 3412
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3411
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
    .line 2556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2557
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2559
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2562
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2564
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2565
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2569
    return-void

    .line 2566
    :catchall_0
    move-exception v2

    .line 2567
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2566
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
    .line 809
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 810
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 812
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 814
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 816
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 820
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 821
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 825
    return-void

    .line 822
    :catchall_0
    move-exception v2

    .line 823
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 822
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
    .line 1481
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1482
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1484
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1486
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1488
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1489
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1493
    return-void

    .line 1490
    :catchall_0
    move-exception v2

    .line 1491
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1490
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
    .line 1464
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1465
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1467
    invoke-static {v1, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1469
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1471
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1472
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1476
    return-void

    .line 1473
    :catchall_0
    move-exception v2

    .line 1474
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1473
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
    .line 4365
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4366
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4368
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4370
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4371
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4373
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4375
    return-void

    .line 4372
    :catchall_0
    move-exception v2

    .line 4373
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4372
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
    .line 4062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4063
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4065
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4067
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4069
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4070
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4074
    return-void

    .line 4071
    :catchall_0
    move-exception v2

    .line 4072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4071
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
    .line 2724
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2725
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2727
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2728
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2730
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2732
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2733
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2735
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2737
    return-void

    .line 2734
    :catchall_0
    move-exception v2

    .line 2735
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2734
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
    .line 2943
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2944
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2946
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2948
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2950
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2951
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2953
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2955
    return-void

    .line 2952
    :catchall_0
    move-exception v2

    .line 2953
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2952
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
    .line 2776
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2777
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2779
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2783
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2784
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2786
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2788
    return-void

    .line 2785
    :catchall_0
    move-exception v2

    .line 2786
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2785
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
    .line 3875
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3876
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3878
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3879
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3881
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3883
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3884
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3886
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3888
    return-void

    .line 3885
    :catchall_0
    move-exception v2

    .line 3886
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3885
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
    .line 2256
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2257
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2259
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2263
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2264
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2268
    return-void

    .line 2265
    :catchall_0
    move-exception v2

    .line 2266
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2265
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
    .line 1813
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1814
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1816
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1817
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1818
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1820
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1822
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1823
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1827
    return-void

    .line 1824
    :catchall_0
    move-exception v2

    .line 1825
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1824
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
    .line 3301
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3302
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3304
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3306
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3308
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3309
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3311
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3313
    return-void

    .line 3310
    :catchall_0
    move-exception v2

    .line 3311
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3310
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
    .line 1245
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1246
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1248
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1250
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1252
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1253
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1257
    return-void

    .line 1254
    :catchall_0
    move-exception v2

    .line 1255
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1254
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
    .line 2877
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2878
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2880
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2882
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2884
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2885
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2887
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2889
    return-void

    .line 2886
    :catchall_0
    move-exception v2

    .line 2887
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2886
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
    .line 2910
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2911
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2913
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2915
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2917
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2918
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2922
    return-void

    .line 2919
    :catchall_0
    move-exception v2

    .line 2920
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2919
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
    .line 980
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 981
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 983
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 985
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 987
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 988
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 992
    return-void

    .line 989
    :catchall_0
    move-exception v2

    .line 990
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 989
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
    .line 3165
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3166
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3168
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3169
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3171
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3173
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3174
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3178
    return-void

    .line 3175
    :catchall_0
    move-exception v2

    .line 3176
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3175
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
    .line 865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 866
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 871
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 872
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 876
    return-void

    .line 873
    :catchall_0
    move-exception v2

    .line 874
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 873
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
    .line 881
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 882
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 884
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 886
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 888
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 889
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 893
    return-void

    .line 890
    :catchall_0
    move-exception v2

    .line 891
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 890
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
    .line 3587
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3588
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3590
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3594
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3595
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3597
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3599
    return-void

    .line 3596
    :catchall_0
    move-exception v2

    .line 3597
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3596
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
    .line 3282
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3283
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3284
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3285
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3286
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3289
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3291
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3292
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3294
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3296
    return-void

    .line 3293
    :catchall_0
    move-exception v2

    .line 3294
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3293
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
    .line 2324
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2325
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2327
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2329
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2331
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2332
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2336
    return-void

    .line 2333
    :catchall_0
    move-exception v2

    .line 2334
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2333
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
    .line 1196
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1197
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1199
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1203
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1204
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1208
    return-void

    .line 1205
    :catchall_0
    move-exception v2

    .line 1206
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1205
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
    .line 1345
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1346
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1348
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1352
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1353
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1357
    return-void

    .line 1354
    :catchall_0
    move-exception v2

    .line 1355
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1354
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
    .line 2121
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2122
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2124
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2126
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2128
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2129
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2133
    return-void

    .line 2130
    :catchall_0
    move-exception v2

    .line 2131
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2130
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
    .line 496
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 497
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 499
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 501
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 503
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 504
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 508
    return-void

    .line 505
    :catchall_0
    move-exception v2

    .line 506
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 505
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
    .line 4045
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4046
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4048
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4052
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4053
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4057
    return-void

    .line 4054
    :catchall_0
    move-exception v2

    .line 4055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4054
    throw v2
.end method

.method public setRcsSwitch(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "switchState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4185
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4186
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4188
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4190
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4192
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf2

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

    .line 106
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 107
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 109
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 113
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 114
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 115
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 119
    return-void

    .line 108
    .end local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_0
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_1

    .line 116
    .restart local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_0
    move-exception v2

    .line 117
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 116
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

    .line 2306
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2307
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2308
    if-nez p1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2309
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2311
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2313
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2314
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2315
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2319
    return-void

    .line 2308
    .end local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_0
    invoke-interface {p1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    goto :goto_0

    .line 2309
    :cond_1
    invoke-interface {p2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_1

    .line 2316
    .restart local v0    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_0
    move-exception v2

    .line 2317
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2316
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
    .line 4079
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4080
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4082
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4084
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4086
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4087
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4089
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4091
    return-void

    .line 4088
    :catchall_0
    move-exception v2

    .line 4089
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4088
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
    .line 3366
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3367
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3369
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3370
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3371
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3373
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3375
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3376
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3378
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3380
    return-void

    .line 3377
    :catchall_0
    move-exception v2

    .line 3378
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3377
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
    .line 2273
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2274
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2276
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2280
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2281
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2285
    return-void

    .line 2282
    :catchall_0
    move-exception v2

    .line 2283
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2282
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
    .line 2437
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2438
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2440
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2441
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2442
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2444
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2446
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2447
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2449
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2451
    return-void

    .line 2448
    :catchall_0
    move-exception v2

    .line 2449
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2448
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
    .line 1646
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1647
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1649
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1653
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1654
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1658
    return-void

    .line 1655
    :catchall_0
    move-exception v2

    .line 1656
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1655
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
    .line 1045
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1046
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1048
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1052
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1053
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1057
    return-void

    .line 1054
    :catchall_0
    move-exception v2

    .line 1055
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1054
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
    .line 1312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1313
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1315
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1317
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1319
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1320
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1324
    return-void

    .line 1321
    :catchall_0
    move-exception v2

    .line 1322
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1321
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
    .line 3468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3469
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3471
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3477
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3478
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3480
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3482
    return-void

    .line 3479
    :catchall_0
    move-exception v2

    .line 3480
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3479
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
    .line 3419
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3420
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3422
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3424
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3426
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3427
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3429
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3431
    return-void

    .line 3428
    :catchall_0
    move-exception v2

    .line 3429
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3428
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
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2007
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2009
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

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
    .line 2607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2608
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2609
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2610
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2612
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2614
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2615
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2617
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2619
    return-void

    .line 2616
    :catchall_0
    move-exception v2

    .line 2617
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2616
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
    .line 2574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2575
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2577
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2579
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2581
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2582
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2584
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2586
    return-void

    .line 2583
    :catchall_0
    move-exception v2

    .line 2584
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2583
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
    .line 3183
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3184
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3186
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3187
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3188
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3190
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3192
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3193
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3195
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3197
    return-void

    .line 3194
    :catchall_0
    move-exception v2

    .line 3195
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3194
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
    .line 4096
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4097
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4099
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4100
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4101
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4105
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4106
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4108
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4110
    return-void

    .line 4107
    :catchall_0
    move-exception v2

    .line 4108
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4107
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
    .line 3079
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3080
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3082
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3083
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3085
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3087
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3088
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3090
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3092
    return-void

    .line 3089
    :catchall_0
    move-exception v2

    .line 3090
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3089
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
    .line 3893
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3894
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3896
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3898
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3900
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3901
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3903
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3905
    return-void

    .line 3902
    :catchall_0
    move-exception v2

    .line 3903
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3902
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
    .line 3129
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3130
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3132
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3134
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3136
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3137
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3141
    return-void

    .line 3138
    :catchall_0
    move-exception v2

    .line 3139
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3138
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
    .line 564
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 565
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 567
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 568
    invoke-virtual {p3, v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 569
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 570
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 571
    invoke-virtual {v1, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 575
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 576
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 580
    return-void

    .line 577
    :catchall_0
    move-exception v2

    .line 578
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 577
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
    .line 3980
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3981
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3982
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3984
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3986
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3987
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3989
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3991
    return-void

    .line 3988
    :catchall_0
    move-exception v2

    .line 3989
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3988
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
    .line 3928
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3929
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3931
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3932
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3934
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3936
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3937
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3939
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3941
    return-void

    .line 3938
    :catchall_0
    move-exception v2

    .line 3939
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3938
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
    .line 914
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 915
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 917
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 919
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 921
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 922
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 926
    return-void

    .line 923
    :catchall_0
    move-exception v2

    .line 924
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 923
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
    .line 2138
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2139
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2141
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2142
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2144
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2146
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2147
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2151
    return-void

    .line 2148
    :catchall_0
    move-exception v2

    .line 2149
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2148
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
    .line 931
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 932
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 937
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 938
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 942
    return-void

    .line 939
    :catchall_0
    move-exception v2

    .line 940
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 939
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
    .line 2156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2157
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2160
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2162
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2163
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2167
    return-void

    .line 2164
    :catchall_0
    move-exception v2

    .line 2165
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2164
    throw v2
.end method

.method public supplyDepersonalization(ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4267
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4268
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4270
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4271
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4275
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf7

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
    .line 177
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 178
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 180
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 185
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 186
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 190
    return-void

    .line 187
    :catchall_0
    move-exception v2

    .line 188
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 187
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
    .line 140
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 141
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 143
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 148
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 149
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v2

    .line 151
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 150
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
    .line 195
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 196
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 198
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 204
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 205
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 209
    return-void

    .line 206
    :catchall_0
    move-exception v2

    .line 207
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 206
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
    .line 158
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 159
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 161
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 167
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 168
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v2

    .line 170
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 169
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
    .line 252
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 253
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 255
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 259
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 260
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 264
    return-void

    .line 261
    :catchall_0
    move-exception v2

    .line 262
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 261
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
    .line 4028
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4029
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4030
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4031
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4033
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4035
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4036
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4038
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4040
    return-void

    .line 4037
    :catchall_0
    move-exception v2

    .line 4038
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4037
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
    .line 368
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 369
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 372
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 374
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 375
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 379
    return-void

    .line 376
    :catchall_0
    move-exception v2

    .line 377
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 376
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
    .line 4131
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4132
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4134
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4138
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4139
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4141
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4143
    return-void

    .line 4140
    :catchall_0
    move-exception v2

    .line 4141
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 4140
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 96
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of vendor.huawei.hardware.radio@1.1::IRadio]@Proxy"

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
    .line 2993
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2994
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2996
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2998
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3000
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3001
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3003
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3005
    return-void

    .line 3002
    :catchall_0
    move-exception v2

    .line 3003
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3002
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
    .line 3010
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3011
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3012
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3013
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3015
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3017
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3018
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3020
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3022
    return-void

    .line 3019
    :catchall_0
    move-exception v2

    .line 3020
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3019
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
    .line 3062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3063
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3065
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3067
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3069
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3070
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3074
    return-void

    .line 3071
    :catchall_0
    move-exception v2

    .line 3072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3071
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
    .line 4436
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 3027
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3028
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3030
    invoke-virtual {p2, v1}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3032
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3034
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3035
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3037
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3039
    return-void

    .line 3036
    :catchall_0
    move-exception v2

    .line 3037
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3036
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
    .line 2976
    .local p2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2977
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2978
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2979
    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2981
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2983
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2984
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2988
    return-void

    .line 2985
    :catchall_0
    move-exception v2

    .line 2986
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2985
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
    .line 3487
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3488
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3489
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3493
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3494
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3496
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3498
    return-void

    .line 3495
    :catchall_0
    move-exception v2

    .line 3496
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3495
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
    .line 3385
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3386
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3391
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3392
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3396
    return-void

    .line 3393
    :catchall_0
    move-exception v2

    .line 3394
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3393
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
    .line 3436
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3437
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3442
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3443
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3445
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3447
    return-void

    .line 3444
    :catchall_0
    move-exception v2

    .line 3445
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 3444
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
    .line 1564
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1565
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1567
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1571
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1572
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1576
    return-void

    .line 1573
    :catchall_0
    move-exception v2

    .line 1574
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1573
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
    .line 1062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1063
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1065
    invoke-virtual {p2, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1067
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1069
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_1/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1070
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1074
    return-void

    .line 1071
    :catchall_0
    move-exception v2

    .line 1072
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 1071
    throw v2
.end method
