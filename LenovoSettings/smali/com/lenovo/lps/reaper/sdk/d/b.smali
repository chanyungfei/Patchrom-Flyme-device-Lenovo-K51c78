.class public final Lcom/lenovo/lps/reaper/sdk/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/StringBuilder;

.field private static final b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# instance fields
.field private c:Lorg/apache/http/client/methods/HttpPost;

.field private d:Lorg/apache/http/params/HttpParams;

.field private e:Ljava/lang/Long;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Lorg/apache/http/params/HttpParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    return-void
.end method

.method private a(Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)Ljava/lang/String;
    .locals 17

    const/4 v7, 0x1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "applicationToken is error."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->p()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->T()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->g()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->e()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->d()I

    move-result v10

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/e/n;->n()Z

    move-result v11

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v13, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%d\u0001%d\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%f\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%d\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s"

    const/16 v14, 0x2c

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "KLog"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v2, 0x2

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->s()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v2

    const/4 v2, 0x3

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->q()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v2

    const/4 v2, 0x4

    aput-object v6, v14, v2

    const/4 v2, 0x5

    aput-object v5, v14, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v2

    const/4 v2, 0x7

    aput-object v3, v14, v2

    const/16 v2, 0x8

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v3, 0x9

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->w()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v14, v3

    const/16 v3, 0xa

    if-eqz v11, :cond_4

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->x()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v14, v3

    const/16 v2, 0xb

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0xc

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->G()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0xd

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0xf

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x10

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x11

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x12

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x13

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x14

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x15

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x16

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x17

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->j()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x19

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    const/16 v2, 0x1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    const/16 v2, 0x1b

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x1c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x1d

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    const/16 v2, 0x1e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    const/16 v2, 0x1f

    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x23

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v2, 0x24

    xor-int v3, v9, v10

    const v4, 0x132df79

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v3, 0x25

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->t()Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v14, v3

    const/16 v3, 0x26

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->u()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v14, v3

    const/16 v3, 0x27

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->z()Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v14, v3

    const/16 v3, 0x28

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->C()Ljava/lang/String;

    move-result-object v2

    :goto_6
    aput-object v2, v14, v3

    const/16 v2, 0x29

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/16 v3, 0x2a

    if-eqz v11, :cond_9

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->r()Ljava/lang/String;

    move-result-object v2

    :goto_7
    aput-object v2, v14, v3

    const/16 v2, 0x2b

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->s()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    const-string v2, ""

    goto/16 :goto_1

    :cond_4
    const-string v2, ""

    goto/16 :goto_2

    :cond_5
    const-string v2, ""

    goto :goto_3

    :cond_6
    const-string v2, ""

    goto :goto_4

    :cond_7
    const-string v2, ""

    goto :goto_5

    :cond_8
    const-string v2, ""

    goto :goto_6

    :cond_9
    const-string v2, ""

    goto :goto_7
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Lorg/apache/http/params/HttpParams;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->m()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "EventReportHandler"

    const-string v1, "processUnknownHostException."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "www.baidu.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackDomainDetectEvent(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->e:Ljava/lang/Long;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EventReportHandler"

    const-string v2, "Exception when processUnknownHostException"

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([BZLcom/lenovo/lps/reaper/sdk/a/a;)V
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "EventReportHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportWithIP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/b;->a()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->a([B)[B

    move-result-object v2

    const-string v1, "EventReportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes length after compress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/lenovo/lps/reaper/sdk/a/a;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://gr.lenovomm.com/reaper/server/gameCompress?appKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v0, v1

    :goto_1
    const-string v1, "binary/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    :try_start_0
    const-string v0, "EventReportHandler"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v2, "response is not ok!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/lang/String;)V

    :cond_2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iget-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->L()Ljava/net/URI;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "APPTOKEN"

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "APPTOKEN"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->K()Ljava/net/URI;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "EventReportHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no compress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/lenovo/lps/reaper/sdk/a/a;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://gr.lenovomm.com/reaper/server/game?appKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iget-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->f:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->N()Ljava/net/URI;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->M()Ljava/net/URI;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "EventReportHandler"

    const-string v3, "in postEvents"

    invoke-static {v0, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " event(s) is(are) reporting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    array-length v3, p1

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(I)Z

    move-result v3

    array-length v5, p1

    move v4, v1

    move v0, v1

    :goto_1
    if-lt v4, v5, :cond_1

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EventReportHandler"

    invoke-static {v5, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "EventReportHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "events length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    if-le v0, v2, :cond_5

    move v0, v2

    :goto_2
    const-string v2, "UTF-8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2, v0, p2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([BZLcom/lenovo/lps/reaper/sdk/a/a;)V

    const-string v0, "EventReportHandler"

    const-string v2, "post finished."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " event(s) report success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    array-length v0, p1

    goto/16 :goto_0

    :cond_1
    aget-object v6, p1, v4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->e()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/api/a;->g()Ljava/lang/String;

    move-result-object v7

    const-string v8, "__PAGEVIEW__"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->e()I

    move-result v7

    if-ne v7, v2, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/api/a;->g()Ljava/lang/String;

    move-result-object v7

    const-string v8, "__PAGEVIEW__"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, v6, p2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "EventReportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when post events. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " event(s) report fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto/16 :goto_2
.end method
