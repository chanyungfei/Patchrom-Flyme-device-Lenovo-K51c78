.class abstract Lcom/android/server/TryToSolveActivity$ListItem;
.super Ljava/lang/Object;
.source "TryToSolveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TryToSolveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListItem"
.end annotation


# instance fields
.field public itemContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TryToSolveActivity;


# direct methods
.method public constructor <init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "itemContent"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$ListItem;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/android/server/TryToSolveActivity$ListItem;->itemContent:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public abstract onClick()V
.end method
