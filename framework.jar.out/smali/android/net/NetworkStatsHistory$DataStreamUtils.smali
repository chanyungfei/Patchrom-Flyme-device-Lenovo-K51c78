.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 698
    .local v1, "size":I
    if-gez v1, :cond_0

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 699
    :cond_0
    new-array v2, v1, [J

    .line 700
    .local v2, "values":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 701
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_1
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 712
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 713
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 714
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 715
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 716
    return-wide v2

    .line 717
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 718
    goto :goto_0

    .line 719
    .end local v0    # "b":B
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    const-string/jumbo v5, "malformed long"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 739
    .local v1, "size":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    .line 745
    :cond_0
    return-object v2

    .line 740
    :cond_1
    if-gez v1, :cond_2

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 741
    :cond_2
    new-array v2, v1, [J

    .line 742
    .local v2, "values":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 743
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 728
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 729
    return-void

    .line 731
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 732
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    if-nez p1, :cond_1

    .line 751
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 761
    :cond_0
    return-void

    .line 754
    :cond_1
    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 755
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_2
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 759
    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
