.class public final Lcom/lenovo/lps/reaper/sdk/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->a:J

    iput-wide p3, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->a:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/a/b;->b:J

    return-void
.end method
