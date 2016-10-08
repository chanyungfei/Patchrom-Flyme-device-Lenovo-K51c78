.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"

# interfaces
.implements Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;


# static fields
.field public static final AVATAR_IDENTIFY_FAILED:I = 0x1

.field public static final AVATAR_IDENTIFY_SCENE_OTHER:I = 0x4

.field public static final AVATAR_IDENTIFY_SCENE_PAY:I = 0x2

.field public static final AVATAR_IDENTIFY_SCENE_SHOOT:I = 0x3

.field public static final AVATAR_IDENTIFY_SCENE_UNLOCK:I = 0x1

.field public static final AVATAR_IDENTIFY_SUCESS:I = 0x0

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AlipayFingerprint"

.field private static sInstance:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# instance fields
.field private identifyKPI:J

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

.field private mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field private startMili:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "alipayteeclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 74
    iput-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J

    .line 75
    iput-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    .line 278
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private static computeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 952
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-object v7

    .line 955
    :cond_1
    const/4 v2, 0x0

    .line 956
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 957
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 960
    .local v1, "buffer":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 961
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 963
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 967
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 970
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v4, :cond_0

    .line 972
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 973
    :catch_1
    move-exception v8

    goto :goto_0

    .line 965
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 966
    const/4 v4, 0x0

    .line 970
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    if-eqz v4, :cond_3

    .line 972
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 977
    :cond_3
    :goto_3
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 978
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 970
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "len":I
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_4

    .line 972
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 973
    :cond_4
    :goto_5
    throw v7

    .restart local v6    # "len":I
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v6    # "len":I
    :catch_3
    move-exception v8

    goto :goto_5

    .line 970
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 967
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method private declared-synchronized initFPManager()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->open(Landroid/content/Context;)Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static open()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 83
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->sInstance:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->sInstance:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->sInstance:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateTA(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "f"    # Ljava/io/File;
    .param p2, "taMD5"    # Ljava/lang/String;

    .prologue
    .line 983
    const/4 v0, 0x0

    .line 985
    .local v0, "buff":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 986
    .local v2, "ins":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 987
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 988
    .local v3, "rsize":I
    const-string v4, "AlipayFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read file res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   fsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 990
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->nativeUpdateTA([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .end local v2    # "ins":Ljava/io/FileInputStream;
    .end local v3    # "rsize":I
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AlipayFingerprint"

    const-string v5, " "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel()I
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->cancel()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFpIDs()[I
    .locals 2

    .prologue
    .line 127
    const-string v0, "AlipayFingerprint"

    const-string v1, "getFpIDs"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->initFPManager()V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->getFpIDs()[I

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 141
    const-string v0, "AlipayFingerprint"

    const-string v1, "getFpName"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->initFPManager()V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->getFpName(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public native invokeCmd(Landroid/content/Context;[B)[B
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->invokeCmd(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public native nativeUpdateTA([B[B)[B
.end method

.method public onResult(III)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "fingerprintId"    # I
    .param p3, "userData"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 197
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "AlipayFingerprint"

    const-string v1, "IdentifyListener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 251
    :pswitch_0
    const-string v0, "AlipayFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-handled onResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 210
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x65

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 217
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v5, v0, v4}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x66

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 224
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x67

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 227
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v5, v0, v4}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    goto :goto_0

    .line 230
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x6f

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 234
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x70

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 238
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x71

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 242
    :pswitch_8
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x73

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 246
    :pswitch_9
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x74

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onStatus(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "AlipayFingerprint"

    const-string v1, "IdentifyListener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return-void

    .line 262
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 274
    const-string v0, "AlipayFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-handled onResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    invoke-interface {v0, v1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    invoke-interface {v0, v1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    invoke-interface {v0, v1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized release()I
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->release()I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 7
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 156
    const-string v0, "AlipayFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFpIdentify timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->initFPManager()V

    .line 160
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 161
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    int-to-long v2, p2

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->startIdentify(Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;J[II)I

    move-result v6

    .line 164
    .local v6, "rslt":I
    if-nez v6, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J

    .line 171
    const/16 v0, 0x64

    .line 175
    .end local v6    # "rslt":I
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const-string v0, "AlipayFingerprint"

    const-string v1, "starFpManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->initFPManager()V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->startFpManager(Landroid/content/Context;)I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 2
    .param p1, "srcDir"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-string v0, "AlipayFingerprint"

    const-string v1, "updateta success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v0, 0x1

    return v0
.end method
