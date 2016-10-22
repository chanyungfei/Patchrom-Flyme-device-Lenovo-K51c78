.class final Lcom/lenovo/lps/reaper/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/c;

.field private final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/c;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d;->a:Lcom/lenovo/lps/reaper/sdk/c;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->a:Lcom/lenovo/lps/reaper/sdk/c;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Lcom/lenovo/lps/reaper/sdk/c;Ljava/lang/Throwable;I)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
