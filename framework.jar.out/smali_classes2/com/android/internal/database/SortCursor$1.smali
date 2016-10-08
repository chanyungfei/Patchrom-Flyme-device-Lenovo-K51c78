.class Lcom/android/internal/database/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/database/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/database/SortCursor;


# direct methods
.method constructor <init>(Lcom/android/internal/database/SortCursor;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 51
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # setter for: Lcom/android/internal/database/SortCursor;->mPos:I
    invoke-static {v1, v3}, Lcom/android/internal/database/SortCursor;->access$002(Lcom/android/internal/database/SortCursor;I)I

    .line 53
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRowNumCache:[I
    invoke-static {v1}, Lcom/android/internal/database/SortCursor;->access$100(Lcom/android/internal/database/SortCursor;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRowNumCache:[I
    invoke-static {v1}, Lcom/android/internal/database/SortCursor;->access$100(Lcom/android/internal/database/SortCursor;)[I

    move-result-object v1

    const/4 v2, -0x2

    aput v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # setter for: Lcom/android/internal/database/SortCursor;->mLastCacheHit:I
    invoke-static {v1, v3}, Lcom/android/internal/database/SortCursor;->access$202(Lcom/android/internal/database/SortCursor;I)I

    .line 58
    return-void
.end method

.method public onInvalidated()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 62
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # setter for: Lcom/android/internal/database/SortCursor;->mPos:I
    invoke-static {v1, v3}, Lcom/android/internal/database/SortCursor;->access$302(Lcom/android/internal/database/SortCursor;I)I

    .line 64
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRowNumCache:[I
    invoke-static {v1}, Lcom/android/internal/database/SortCursor;->access$100(Lcom/android/internal/database/SortCursor;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRowNumCache:[I
    invoke-static {v1}, Lcom/android/internal/database/SortCursor;->access$100(Lcom/android/internal/database/SortCursor;)[I

    move-result-object v1

    const/4 v2, -0x2

    aput v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/internal/database/SortCursor$1;->this$0:Lcom/android/internal/database/SortCursor;

    # setter for: Lcom/android/internal/database/SortCursor;->mLastCacheHit:I
    invoke-static {v1, v3}, Lcom/android/internal/database/SortCursor;->access$202(Lcom/android/internal/database/SortCursor;I)I

    .line 69
    return-void
.end method
