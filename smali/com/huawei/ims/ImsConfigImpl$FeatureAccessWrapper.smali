.class final Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureAccessWrapper"
.end annotation


# instance fields
.field private feature:I

.field public listener:Lcom/android/ims/ImsConfigListener;

.field private network:I

.field private value:I


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    return v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    return v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    return v0
.end method

.method public constructor <init>(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    .line 124
    iput p2, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    .line 125
    iput-object p4, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    .line 126
    iput p3, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    .line 127
    return-void
.end method
