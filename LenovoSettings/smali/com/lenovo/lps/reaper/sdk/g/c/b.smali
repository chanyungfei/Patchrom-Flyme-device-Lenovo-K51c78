.class public final Lcom/lenovo/lps/reaper/sdk/g/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final k:[C


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/nio/ByteBuffer;

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ReaperSDK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->k:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a:J

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->k:[C

    array-length v0, v0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/g/c/b;->k:[C

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
.method public a()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    return v0
.end method

.method public a(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f:J

    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;II)V
    .locals 0

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReaperSDK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a(Ljava/nio/ByteBuffer;II)V

    :cond_2
    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->j:I

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CurrentTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    const-string v2, "Loading DB..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Head:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Capability:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sequence:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SessionID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FirstView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PreviousView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "visits:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    invoke-virtual {p0, v1}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->g:J

    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 5

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/g/c/b;->k:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->j:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    aget-char v3, v1, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->j:I

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h:J

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a:J

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    return-void
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->d:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/b;->j:I

    return v0
.end method
