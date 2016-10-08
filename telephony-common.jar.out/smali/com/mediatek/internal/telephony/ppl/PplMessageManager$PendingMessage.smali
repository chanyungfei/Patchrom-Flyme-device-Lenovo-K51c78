.class public Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
.super Ljava/lang/Object;
.source "PplMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ppl/PplMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMessage"
.end annotation


# static fields
.field public static final ALL_SIM_ID:I = -0x2

.field public static final ANY_SIM_ID:I = -0x1

.field public static final INVALID_ID:J = -0x1L

.field public static final INVALID_SIM_ID:I = -0x3

.field public static final KEY_FIRST_TRIAL:Ljava/lang/String; = "firstTrial"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final KEY_SEGMENT_INDEX:Ljava/lang/String; = "segmentIndex"

.field public static final KEY_SIM_ID:Ljava/lang/String; = "simId"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PENDING_MESSAGE_LENGTH:I = 0x31


# instance fields
.field public content:Ljava/lang/String;

.field public id:J

.field public number:Ljava/lang/String;

.field public simId:I

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 103
    iput-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 104
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    .line 106
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(JBLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # B
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "simId"    # I
    .param p6, "content"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 95
    iput-byte p3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 96
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 97
    iput p5, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    .line 98
    iput-object p6, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->decode([BI)V

    .line 111
    return-void
.end method

.method private static bytes2long([BI)J
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v6, 0x8

    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .local v4, "temp":J
    const-wide/16 v2, 0x0

    .line 163
    .local v2, "res":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 164
    shl-long/2addr v2, v6

    .line 165
    add-int v1, v0, p1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    .line 166
    or-long/2addr v2, v4

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-wide v2
.end method

.method public static getNextId()J
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static long2bytes(J)[B
    .locals 6
    .param p0, "num"    # J

    .prologue
    const/16 v4, 0x8

    .line 172
    new-array v0, v4, [B

    .line 173
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 174
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    .locals 8

    .prologue
    .line 114
    new-instance v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    iget-wide v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>(JBLjava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 148
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    aget-byte v2, p1, p2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 149
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->bytes2long([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 150
    add-int/lit8 p2, v1, 0x8

    .line 151
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    move v0, p2

    .line 152
    .local v0, "j":I
    :goto_0
    add-int/lit8 v2, p2, 0x28

    if-ge v0, v2, :cond_0

    .line 153
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v0, p2

    invoke-direct {v2, p1, p2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 158
    return-void

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public encode([BI)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v7, 0x28

    const/4 v6, 0x0

    .line 134
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    iget-byte v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    aput-byte v3, p1, p2

    .line 135
    iget-wide v4, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->long2bytes(J)[B

    move-result-object v0

    .line 136
    .local v0, "idBytes":[B
    array-length v3, v0

    invoke-static {v0, v6, p1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    add-int/lit8 p2, v2, 0x8

    .line 138
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 139
    .local v1, "numberBytes":[B
    array-length v3, v1

    if-le v3, v7, :cond_0

    .line 140
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Destination number is too long"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 144
    array-length v3, v1

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
