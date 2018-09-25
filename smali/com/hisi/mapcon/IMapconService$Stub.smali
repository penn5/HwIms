.class public abstract Lcom/hisi/mapcon/IMapconService$Stub;
.super Landroid/os/Binder;
.source "IMapconService.java"

# interfaces
.implements Lcom/hisi/mapcon/IMapconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/IMapconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisi/mapcon/IMapconService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hisi.mapcon.IMapconService"

.field static final TRANSACTION_getUtOverWifiApn:I = 0xf

.field static final TRANSACTION_getVoWifiServiceDomain:I = 0xc

.field static final TRANSACTION_getVoWifiServiceState:I = 0xa

.field static final TRANSACTION_notifyImsOff:I = 0x6

.field static final TRANSACTION_notifyImsOn:I = 0x5

.field static final TRANSACTION_notifyRoaming:I = 0x10

.field static final TRANSACTION_notifyWifiOff:I = 0x4

.field static final TRANSACTION_sendMessage:I = 0x7

.field static final TRANSACTION_setDomain:I = 0x3

.field static final TRANSACTION_setVoWifiOff:I = 0x2

.field static final TRANSACTION_setVoWifiOn:I = 0x1

.field static final TRANSACTION_setVoWifiServiceDomain:I = 0xb

.field static final TRANSACTION_setVoWifiServiceOff:I = 0x9

.field static final TRANSACTION_setVoWifiServiceOn:I = 0x8

.field static final TRANSACTION_setupTunnelOverWifi:I = 0xd

.field static final TRANSACTION_teardownTunnelOverWifi:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p0, p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.hisi.mapcon.IMapconService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hisi/mapcon/IMapconService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/hisi/mapcon/IMapconService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 45
    :sswitch_0
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOn(I)I

    move-result v6

    .line 54
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v9

    .line 60
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_2
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOff(I)I

    move-result v6

    .line 64
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v9

    .line 70
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->setDomain(II)I

    move-result v6

    .line 76
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v9

    .line 82
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_4
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconServiceCallback;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyWifiOff(Lcom/hisi/mapcon/IMapconServiceCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v9

    .line 91
    .end local v1    # "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    :sswitch_5
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOn(I)I

    move-result v6

    .line 95
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v9

    .line 101
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_6
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOff(II)I

    move-result v6

    .line 107
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v9

    .line 113
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_7
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->sendMessage(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v9

    .line 122
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOn(II)I

    move-result v6

    .line 128
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v9

    .line 134
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_9
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOff(II)I

    move-result v6

    .line 140
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v9

    .line 146
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_a
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceState(II)I

    move-result v6

    .line 152
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return v9

    .line 158
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_b
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceDomain(III)I

    move-result v6

    .line 166
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v9

    .line 172
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_c
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceDomain(II)I

    move-result v6

    .line 178
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v9

    .line 184
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_d
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    sget-object v8, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisi/mapcon/ServerAddr;

    .line 198
    :goto_0
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/hisi/mapcon/IMapconService$Stub;->setupTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 199
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v9

    .line 196
    .end local v6    # "_result":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_0

    .line 205
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :sswitch_e
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    sget-object v8, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisi/mapcon/ServerAddr;

    .line 219
    :goto_1
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/hisi/mapcon/IMapconService$Stub;->teardownTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 220
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return v9

    .line 217
    .end local v6    # "_result":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_1

    .line 226
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :sswitch_f
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/hisi/mapcon/IMapconService$Stub;->getUtOverWifiApn()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    return v9

    .line 234
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v8, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyRoaming(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v9

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
