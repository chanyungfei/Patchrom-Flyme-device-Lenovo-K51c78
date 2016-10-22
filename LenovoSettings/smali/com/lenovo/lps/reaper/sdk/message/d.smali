.class public final Lcom/lenovo/lps/reaper/sdk/message/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/d;->b:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/message/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Z)V

    return-void
.end method
