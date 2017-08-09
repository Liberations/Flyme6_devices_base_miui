.class Lcom/meizu/widget/ViewPagerOverScrollLayout$1;
.super Ljava/lang/Object;
.source "ViewPagerOverScrollLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/ViewPagerOverScrollLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;


# direct methods
.method constructor <init>(Lcom/meizu/widget/ViewPagerOverScrollLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/ViewPagerOverScrollLayout;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-static {v0, p2}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->-set1(Lcom/meizu/widget/ViewPagerOverScrollLayout;F)F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-static {v0, p1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->-set0(Lcom/meizu/widget/ViewPagerOverScrollLayout;I)I

    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-static {v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->-get0(Lcom/meizu/widget/ViewPagerOverScrollLayout;)Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-static {v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->-get0(Lcom/meizu/widget/ViewPagerOverScrollLayout;)Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;->onPagerSelected(I)V

    :cond_0
    return-void
.end method
