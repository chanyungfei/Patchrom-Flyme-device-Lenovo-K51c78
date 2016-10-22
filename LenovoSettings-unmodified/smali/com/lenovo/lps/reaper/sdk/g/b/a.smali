.class public final Lcom/lenovo/lps/reaper/sdk/g/b/a;
.super Lcom/lenovo/lps/reaper/sdk/g/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/g/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Lcom/lenovo/lps/reaper/sdk/api/a;
    .locals 1

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->a(I)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/lenovo/lps/reaper/sdk/api/a;
    .locals 35

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "FileEventDaoImplV3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->f()I

    move-result p1

    :cond_0
    move/from16 v0, p1

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/api/a;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/c/b;->a()I

    move-result v3

    const-string v2, "FileEventDaoImplV3"

    const-string v4, "RECORD_SIZE v3: 2048"

    invoke-static {v2, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move/from16 v0, v33

    int-to-long v4, v0

    const-wide/16 v6, 0x800

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x1000

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->a:Lcom/lenovo/lps/reaper/sdk/g/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/b;->b(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/g/b/a;->a(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v27

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/a;

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget-object v26, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v2 .. v30}, Lcom/lenovo/lps/reaper/sdk/api/a;-><init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;->b:Lcom/lenovo/lps/reaper/sdk/g/c/b;

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

    const-string v3, "FileEventDaoImplV3"

    const-string v4, "Error when fetch Event object from storage. "

    invoke-static {v3, v4, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_2
.end method
