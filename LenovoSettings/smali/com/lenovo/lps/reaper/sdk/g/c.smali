.class public final Lcom/lenovo/lps/reaper/sdk/g/c;
.super Ljava/lang/Object;


# static fields
.field private static final k:[C


# instance fields
.field private a:J

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:Ljava/nio/ByteBuffer;

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ReaperSDK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/g/c;->k:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:J

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c;->c()V

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/g/c;->k:[C

    array-length v0, v0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/g/c;->k:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    aput-char v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    aget v3, v3, v1

    aget v2, v2, v1

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    aget v0, v0, v1

    :cond_0
    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->l:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->i:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:J

    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;II)V
    .locals 0

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/c;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReaperSDK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c;->c()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, p1, v2, v1}, Lcom/lenovo/lps/reaper/sdk/g/c;->a(Ljava/nio/ByteBuffer;II)V

    :cond_1
    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->j:I

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/c;->c(Lcom/lenovo/lps/reaper/sdk/i/i;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v3, v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/lps/reaper/sdk/g/c;->a(Lcom/lenovo/lps/reaper/sdk/i/i;I)I

    move-result v3

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/g/c;->k:[C

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->i:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->j:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    aget-char v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->j:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->g:J

    return-void
.end method

.method public c()V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:J

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aput v6, v0, v6

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aput v6, v0, v6

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    if-nez v0, :cond_0

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    aput v6, v0, v6

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    add-int/lit8 v4, v1, -0x1

    aget v4, v2, v4

    add-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->h:J

    return-void
.end method

.method public c(Lcom/lenovo/lps/reaper/sdk/i/i;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v0, v2, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 4

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v0, v2, v0

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:[I

    aget v2, v2, v0

    aget v1, v1, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:[I

    aget v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->h:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->j:I

    return v0
.end method
