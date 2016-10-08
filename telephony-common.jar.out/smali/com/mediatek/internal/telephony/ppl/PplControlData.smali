.class public Lcom/mediatek/internal/telephony/ppl/PplControlData;
.super Ljava/lang/Object;
.source "PplControlData.java"


# static fields
.field private static final HEADER_SIZE:I = 0x30

.field public static final SALT_LIST_LENGTH:I = 0x28

.field public static final SALT_SIZE:I = 0x14

.field public static final SECRET_LIST_LENGTH:I = 0x28

.field public static final SECRET_SIZE:I = 0x14

.field public static final SIM_FINGERPRINT_LENGTH:I = 0x28

.field public static final STATUS_ENABLED:B = 0x2t

.field public static final STATUS_LOCKED:B = 0x4t

.field public static final STATUS_PROVISIONED:B = 0x1t

.field public static final STATUS_SIM_LOCKED:B = 0x8t

.field public static final STATUS_WIPE_REQUESTED:B = 0x10t

.field private static final TAG:Ljava/lang/String; = "PPL/ControlData"

.field public static final TRUSTED_NUMBER_LENGTH:I = 0x28

.field public static final VERSION:B = 0x1t

.field private static mSIMComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field public PendingMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;",
            ">;"
        }
    .end annotation
.end field

.field public SIMFingerprintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public TrustedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public salt:[B

.field public secret:[B

.field public status:B

.field public version:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 36
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 37
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 38
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    return-void
.end method

.method public static buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 187
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 188
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->decode([B)V

    .line 193
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const-string v1, "PPL/ControlData"

    const-string v2, "buildControlData: data is empty, return empty instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static compareSIMFingerprints([B[B)I
    .locals 4
    .param p0, "lhs"    # [B
    .param p1, "rhs"    # [B

    .prologue
    .line 315
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 316
    new-instance v2, Ljava/lang/Error;

    const-string v3, "The two fingerprints must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 319
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    sub-int v0, v2, v3

    .line 320
    .local v0, "difference":I
    if-eqz v0, :cond_1

    .line 324
    .end local v0    # "difference":I
    :goto_1
    return v0

    .line 318
    .restart local v0    # "difference":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "difference":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDataSize()I
    .locals 2

    .prologue
    .line 166
    const/16 v0, 0x30

    .line 167
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x31

    add-int/2addr v0, v1

    .line 176
    :cond_2
    return v0
.end method

.method public static sortSIMFingerprints([[B)[[B
    .locals 3
    .param p0, "input"    # [[B

    .prologue
    .line 306
    invoke-virtual {p0}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 307
    .local v1, "result":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 308
    aget-object v2, v1, v0

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 311
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 236
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 237
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 238
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 239
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 240
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 241
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 242
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 243
    return-void
.end method

.method public clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 202
    new-instance v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 203
    .local v3, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    iget-byte v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    iput-byte v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 204
    iget-byte v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    iput-byte v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 205
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 206
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 207
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 208
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 210
    iget-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    iput-object v7, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 215
    :cond_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 217
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 218
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    .local v4, "s":Ljava/lang/String;
    iget-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    iput-object v7, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 224
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 225
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 226
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    .line 227
    .local v2, "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    iget-object v5, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    :cond_4
    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 232
    :cond_5
    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;

    move-result-object v0

    return-object v0
.end method

.method public decode([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 114
    aget-byte v7, p1, v9

    iput-byte v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 115
    const/4 v7, 0x1

    aget-byte v7, p1, v7

    iput-byte v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 116
    const/4 v7, 0x2

    aget-byte v4, p1, v7

    .line 117
    .local v4, "numberOfSIMFingerprint":B
    const/4 v7, 0x3

    aget-byte v5, p1, v7

    .line 118
    .local v5, "numberOfTrustedNumber":B
    const/4 v7, 0x4

    aget-byte v3, p1, v7

    .line 119
    .local v3, "numberOfPendingMessage":B
    const/16 v6, 0x8

    .line 120
    .local v6, "offset":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v8, v8

    invoke-static {p1, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 121
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v7, v7

    add-int/2addr v6, v7

    .line 122
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v8, v8

    invoke-static {p1, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 123
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v7, v7

    add-int/2addr v6, v7

    .line 124
    if-eqz v4, :cond_0

    .line 125
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 127
    new-array v0, v11, [B

    .line 128
    .local v0, "fingerprint":[B
    invoke-static {p1, v6, v0, v9, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 129
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v6, v6, 0x28

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "fingerprint":[B
    .end local v1    # "i":I
    :cond_0
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 135
    :cond_1
    if-eqz v5, :cond_4

    .line 136
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 137
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 138
    move v2, v6

    .line 139
    .local v2, "j":I
    :goto_2
    add-int/lit8 v7, v6, 0x28

    if-ge v2, v7, :cond_2

    .line 140
    aget-byte v7, p1, v2

    if-nez v7, :cond_3

    .line 144
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    new-instance v8, Ljava/lang/String;

    sub-int v9, v2, v6

    invoke-direct {v8, p1, v6, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v6, v6, 0x28

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 150
    :cond_5
    if-eqz v3, :cond_6

    .line 151
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 152
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_7

    .line 153
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    new-instance v8, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-direct {v8, p1, v6}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>([BI)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v6, v6, 0x31

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    .end local v1    # "i":I
    :cond_6
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 159
    :cond_7
    return-void
.end method

.method public encode()[B
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->getDataSize()I

    move-result v4

    new-array v3, v4, [B

    .line 67
    .local v3, "result":[B
    iget-byte v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    aput-byte v4, v3, v5

    .line 68
    const/4 v4, 0x1

    iget-byte v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    aput-byte v6, v3, v4

    .line 69
    const/4 v6, 0x2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    aput-byte v4, v3, v6

    .line 70
    const/4 v6, 0x3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    aput-byte v4, v3, v6

    .line 71
    const/4 v6, 0x4

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    aput-byte v4, v3, v6

    .line 72
    const/4 v4, 0x5

    aput-byte v5, v3, v4

    .line 73
    const/4 v4, 0x6

    aput-byte v5, v3, v4

    .line 74
    const/4 v4, 0x7

    aput-byte v5, v3, v4

    .line 75
    const/16 v2, 0x8

    .line 76
    .local v2, "offset":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 77
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 78
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 80
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 83
    add-int/lit8 v2, v2, 0x28

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 69
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_1

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_2

    .line 86
    .restart local v2    # "offset":I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 87
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 88
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 89
    .local v0, "buffer":[B
    array-length v4, v0

    if-le v4, v7, :cond_4

    .line 90
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Trusted number is too long"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_4
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 94
    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 95
    add-int/lit8 v2, v2, 0x28

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 98
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 99
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 100
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-virtual {v4, v3, v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->encode([BI)V

    .line 101
    add-int/lit8 v2, v2, 0x31

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 104
    .end local v1    # "i":I
    :cond_6
    return-object v3
.end method

.method public hasWipeFlag()Z
    .locals 2

    .prologue
    .line 258
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 246
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 282
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSIMLocked()Z
    .locals 2

    .prologue
    .line 294
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setProvision(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setSIMLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setWipeFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PplControlData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
