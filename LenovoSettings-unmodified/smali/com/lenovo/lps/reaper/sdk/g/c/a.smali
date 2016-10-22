.class public Lcom/lenovo/lps/reaper/sdk/g/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/lenovo/lps/reaper/sdk/g/b;

.field protected b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

.field protected c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected a(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 6

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x5

    if-gt v2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v5}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/g/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    return-void
.end method

.method public a()[Lcom/lenovo/lps/reaper/sdk/api/a;
    .locals 1

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a(I)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/lenovo/lps/reaper/sdk/api/a;
    .locals 35

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "FileEventDaoImplV6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result p1

    :cond_0
    move/from16 v0, p1

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/api/a;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a()I

    move-result v3

    const/4 v2, 0x0

    move/from16 v32, v2

    move/from16 v33, v3

    :goto_0
    move/from16 v0, v32

    move/from16 v1, p1

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/s;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v31

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_3

    :cond_1
    monitor-exit v34

    move-object/from16 v2, v31

    :goto_2
    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move/from16 v0, v33

    int-to-long v4, v0

    const-wide/16 v6, 0x1000

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x1000

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/b;->b(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v27

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/a;

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v23, -0x1

    sget-object v26, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v2 .. v30}, Lcom/lenovo/lps/reaper/sdk/api/a;-><init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a(I)I

    move-result v3

    aput-object v2, v31, v32

    add-int/lit8 v2, v32, 0x1

    move/from16 v32, v2

    move/from16 v33, v3

    goto/16 :goto_0

    :cond_3
    aget-object v4, v31, v2

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/a;->b()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "FileEventDaoImplV6"

    const-string v4, "Error when fetch Event object from storage. "

    invoke-static {v3, v4, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method protected b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FileEventDaoImplV6"

    const-string v3, "getString error. "

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/16 v0, 0x1000

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->b(Ljava/nio/ByteBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v4, v0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FileEventDaoImplV6"

    const-string v4, "DB load success (in activeSession())"

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FileEventDaoImplV6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sessionID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->d()V

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const-string v0, "FileEventDaoImplV6"

    const-string v4, "DB load false (in activeSession())"

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b(I)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FileEventDaoImplV6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when addSessionVisits in file storage. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->d()V

    monitor-exit v2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->b()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "FileEventDaoImplV6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when delete events. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result v0

    return v0
.end method

.method protected d()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->c()V

    return-void
.end method
