.class public Lcom/android/internal/telephony/SuppSrvRequest;
.super Ljava/lang/Object;
.source "SuppSrvRequest.java"


# static fields
.field public static final SUPP_SRV_REQ_GET_CB:I = 0xa

.field public static final SUPP_SRV_REQ_GET_CF:I = 0xc

.field public static final SUPP_SRV_REQ_GET_CF_IN_TIME_SLOT:I = 0x10

.field public static final SUPP_SRV_REQ_GET_CLIP:I = 0x2

.field public static final SUPP_SRV_REQ_GET_CLIR:I = 0x4

.field public static final SUPP_SRV_REQ_GET_COLP:I = 0x6

.field public static final SUPP_SRV_REQ_GET_COLR:I = 0x8

.field public static final SUPP_SRV_REQ_GET_CW:I = 0xe

.field public static final SUPP_SRV_REQ_MMI_CODE:I = 0xf

.field public static final SUPP_SRV_REQ_SET_CB:I = 0x9

.field public static final SUPP_SRV_REQ_SET_CF:I = 0xb

.field public static final SUPP_SRV_REQ_SET_CF_IN_TIME_SLOT:I = 0x11

.field public static final SUPP_SRV_REQ_SET_CLIP:I = 0x1

.field public static final SUPP_SRV_REQ_SET_CLIR:I = 0x3

.field public static final SUPP_SRV_REQ_SET_COLP:I = 0x5

.field public static final SUPP_SRV_REQ_SET_COLR:I = 0x7

.field public static final SUPP_SRV_REQ_SET_CW:I = 0xd


# instance fields
.field public mParcel:Landroid/os/Parcel;

.field mRequestCode:I

.field mResultCallback:Landroid/os/Message;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;
    .locals 2
    .param p0, "request"    # I
    .param p1, "resultCallback"    # Landroid/os/Message;

    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/telephony/SuppSrvRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/SuppSrvRequest;-><init>()V

    .line 79
    .local v0, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iput p0, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mRequestCode:I

    .line 80
    iput-object p1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mResultCallback:Landroid/os/Message;

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    .line 83
    return-object v0
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/telephony/SuppSrvRequest;->mRequestCode:I

    return v0
.end method

.method public getResultCallback()Landroid/os/Message;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SuppSrvRequest;->mResultCallback:Landroid/os/Message;

    return-object v0
.end method

.method public setResultCallback(Landroid/os/Message;)V
    .locals 0
    .param p1, "resultCallback"    # Landroid/os/Message;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/SuppSrvRequest;->mResultCallback:Landroid/os/Message;

    .line 95
    return-void
.end method
