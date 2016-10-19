.class public Lcom/mediatek/simservs/xcap/XcapException;
.super Ljava/lang/Exception;
.source "XcapException.java"


# static fields
.field public static final AUTHENTICATION_EXCEPTION:I = 0x9

.field public static final AUTH_CHALLENGE_EXCEPTION:I = 0x6

.field public static final CONNECTION_POOL_TIMEOUT_EXCEPTION:I = 0x1

.field public static final CONNECT_TIMEOUT_EXCEPTION:I = 0x2

.field public static final CREDENTIALS_NOT_AVAILABLE_EXCEPTION:I = 0x7

.field public static final HTTP_EXCEPTION:I = 0xe

.field public static final HTTP_RECOVERABL_EEXCEPTION:I = 0x4

.field public static final INVALID_CREDENTIALS_EXCEPTION:I = 0x8

.field public static final MALFORMED_CHALLENGE_EXCEPTION:I = 0x5

.field public static final MALFORMED_COOKIE_EXCEPTION:I = 0xa

.field public static final NO_EXCEPTION:I = 0x0

.field public static final NO_HTTP_RESPONSE_EXCEPTION:I = 0x3

.field public static final PROTOCOL_EXCEPTION:I = 0xd

.field public static final REDIRECT_EXCEPTION:I = 0xb

.field public static final URI_EXCEPTION:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExceptionCode:I

.field private mHttpErrorCode:I

.field private mIsConnectionError:Z

.field private mXcapErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpErrorCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 34
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 44
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "httpErrorCode"    # I
    .param p2, "xcapErrorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 34
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 54
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 55
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapException;->mXcapErrorMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2
    .param p1, "httpException"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 34
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 64
    instance-of v0, p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    if-eqz v0, :cond_0

    .line 65
    iput v1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 67
    :cond_0
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 70
    :cond_1
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 73
    :cond_2
    iput-boolean v1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 74
    return-void
.end method


# virtual methods
.method public getExceptionCodeCode()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    return v0
.end method

.method public getHttpErrorCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    return v0
.end method

.method public isConnectionError()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    return v0
.end method
