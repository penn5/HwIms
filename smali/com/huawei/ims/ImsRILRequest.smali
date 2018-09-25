.class Lcom/huawei/ims/ImsRILRequest;
.super Ljava/lang/Object;
.source "ImsRIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/huawei/ims/ImsRILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/huawei/ims/ImsRILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    sput v1, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 112
    sput v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    .line 104
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;
    .locals 5
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    sget-object v2, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v1, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    if-eqz v1, :cond_0

    .line 141
    sget-object v0, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 142
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    sput-object v1, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 143
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    .line 144
    sget v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    monitor-exit v2

    .line 148
    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/huawei/ims/ImsRILRequest;

    invoke-direct {v0}, Lcom/huawei/ims/ImsRILRequest;-><init>()V

    .line 152
    :cond_1
    sget-object v2, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_1
    sget v1, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    iput v1, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 155
    iput p0, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 156
    iput-object p1, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    .line 159
    const/4 v1, -0x1

    iput v1, v0, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 160
    iput-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 163
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 164
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 152
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 168
    :cond_2
    iget-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-object v0
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v3, 0x0

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    invoke-static {p0, p1}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 177
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz p2, :cond_0

    .line 178
    iput-object p2, v0, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_0
    const-string/jumbo v1, "RILJ_IMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null workSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 209
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 236
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string/jumbo v1, "RILJ_IMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    iget v3, p0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, " error: "

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 242
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    iput-object v4, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    .line 249
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 192
    sget-object v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 194
    sget-object v0, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    iput-object v0, p0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    .line 195
    sput-object p0, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 196
    sget v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 200
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 221
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
