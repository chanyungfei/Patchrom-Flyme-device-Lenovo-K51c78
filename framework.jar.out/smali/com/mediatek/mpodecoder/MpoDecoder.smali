.class public Lcom/mediatek/mpodecoder/MpoDecoder;
.super Ljava/lang/Object;
.source "MpoDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoDecoder"

.field public static final TYPE_3DPAN:I = 0x20001

.field public static final TYPE_MAV:I = 0x20003

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STEREO:I = 0x20002


# instance fields
.field private final mNativeMpoDecoder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "mpojni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "nativeMpoDecoder"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native mpo decoder creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput p1, p0, Lcom/mediatek/mpodecoder/MpoDecoder;->mNativeMpoDecoder:I

    .line 80
    return-void
.end method

.method public static native decodeByteArray([BII)Lcom/mediatek/mpodecoder/MpoDecoder;
.end method

.method public static native decodeFile(Ljava/lang/String;)Lcom/mediatek/mpodecoder/MpoDecoder;
.end method

.method public static decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpodecoder/MpoDecoder;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mpoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 158
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<decodeUri> (mpoUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/mpodecoder/MpoDecoder;->getByteBuffer(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    .line 162
    .local v0, "buffer":[B
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<decodeUri> buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez v0, :cond_1

    .line 164
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<decodeUri> got null buffer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/mediatek/mpodecoder/MpoDecoder;->decodeByteArray([BII)Lcom/mediatek/mpodecoder/MpoDecoder;

    move-result-object v1

    goto :goto_0
.end method

.method private static getByteBuffer(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 171
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<getByteBuffer> Image Uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    .line 174
    .local v3, "mpoStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 175
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> we want to get stream size.."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/high16 v0, 0x10000

    .line 177
    .local v0, "BufSize":I
    const/high16 v7, 0x10000

    new-array v1, v7, [B

    .line 178
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 179
    .local v5, "streamSize":I
    const/4 v4, 0x0

    .line 181
    .local v4, "readSize":I
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 182
    if-lez v4, :cond_1

    .line 183
    add-int/2addr v5, v4

    .line 185
    :cond_1
    if-gtz v4, :cond_0

    .line 186
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<getByteBuffer> streamSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-gtz v5, :cond_3

    .line 188
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> got invalid stream length of MPO"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 214
    .end local v0    # "BufSize":I
    .end local v1    # "buffer":[B
    .end local v4    # "readSize":I
    .end local v5    # "streamSize":I
    :cond_2
    :goto_0
    return-object v1

    .line 192
    .restart local v0    # "BufSize":I
    .restart local v1    # "buffer":[B
    .restart local v4    # "readSize":I
    .restart local v5    # "streamSize":I
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 193
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> reopen stream"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 196
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> allocate bysste"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    add-int/lit8 v7, v5, 0x1

    new-array v1, v7, [B

    .line 199
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> read stream.."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 203
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 204
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<getByteBuffer> read whole stream length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eq v4, v5, :cond_4

    .line 206
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> read length could be wrong?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    if-gez v4, :cond_2

    .line 209
    const-string v7, "MpoDecoder"

    const-string v8, "<getByteBuffer> read whole stream failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "BufSize":I
    .end local v1    # "buffer":[B
    .end local v4    # "readSize":I
    .end local v5    # "streamSize":I
    :catch_0
    move-exception v2

    .line 213
    .local v2, "ex":Ljava/io/IOException;
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<getByteBuffer> Failed to open mpo stream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public native close()V
.end method

.method public native getFrameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public native getFrameCount()I
.end method

.method public native getHeight()I
.end method

.method public native getMpoSubType()I
.end method

.method public native getMpoType()I
.end method

.method public native getWidth()I
.end method
